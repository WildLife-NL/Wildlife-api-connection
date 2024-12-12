import 'dart:convert';
import 'dart:io';

import 'package:flutter_test/flutter_test.dart';
import 'package:http/http.dart' as http;
import 'package:mockito/mockito.dart';
import 'package:wildlife_api_connection/interaction_api.dart';
import 'package:wildlife_api_connection/models/answer.dart';
import 'package:wildlife_api_connection/models/interaction.dart';
import 'package:wildlife_api_connection/models/interaction_type.dart';
import 'package:wildlife_api_connection/models/location.dart';
import 'package:wildlife_api_connection/models/experiment.dart';
import 'package:wildlife_api_connection/models/question.dart';
import 'package:wildlife_api_connection/models/questionnaire.dart';
import 'package:wildlife_api_connection/models/user.dart';

import 'mocks/api_mocks.mocks.dart';

void main() {
  group('InteractionAPI', () {
    late MockApiClient mockApiClient;
    late InteractionApi interactionApi;

    const type = 1;
    const description = 'test';
    const speciesId = '2d22';
    const location = {"latitude": -90.123, "longitude": -180.123};
    var questionnaire = Questionnaire(
      id: "4d44",
      experiment: Experiment(
        id: "3d33",
        description: "This is a description",
        name: "Experiment test",
        start: DateTime(12, 12, 2021),
        end: DateTime(12, 12, 2021),
        user: User(id: "1d11", email: "test@test.nl"),
      ),
      identifier: "1d11",
      interactionType: InteractionType(
        id: 1,
        name: "interaction test",
        description: "interaction description",
      ),
      name: "questionnaire name",
      questions: [
        Question(
            id: "6d66",
            allowMultipleResponse: true,
            allowOpenResponse: false,
            answers: [
              Answer(
                id: "7d77",
                index: 0,
                nextQuestionId: "8d88",
                text: "yes",
              ),
            ],
            description: "Answer description",
            index: 0,
            openResponseFormat: "500",
            text: "Question text"),
      ],
    );

    var responseJson = {
      "ID": "2af0f623-7ef5-4bfc-8a61-900279f06fc8",
      "timestamp": "2024-10-16T08:29:36.381911Z",
      "description": description,
      "speciesID": "",
      "location": location,
      "species": {
        "ID": speciesId,
        "name": "Animal",
        "commonName": "Dier",
      },
      "user": {"ID": "111", "name": ""},
      "type": {
        "ID": 1,
        "name": "Waarneming",
        "description": "U hebt een levend wild dier gezien.",
      },
      "questionnaire": {
        "ID": questionnaire.id,
        "experiment": {
          "ID": questionnaire.experiment.id,
          "description": "Questionaire description",
          "end": "2019-08-24T14:15:22Z",
          "messageActivity": 0,
          "name": "string",
          "numberOfMessages": 0,
          "numberOfQuestionnaires": 0,
          "questionnaireActivity": 0,
          "start": "2019-08-24T14:15:22Z",
          "user": {
            "ID": questionnaire.experiment.user.id,
            "name": "string",
          }
        },
        "identifier": "string",
        "interactionType": {
          "ID": 1,
          "description": "string",
          "name": "string",
        },
        "name": "string",
        "questions": [
          {
            "ID": questionnaire.questions![0].id,
            "allowMultipleResponse": true,
            "allowOpenResponse": true,
            "answers": [
              {
                "ID": "3892eb50-4697-4c72-aadc-32b766bce3c0",
                "index": 1,
                "nextQuestionID": "6d3e86b8-2e90-4c2e-9edc-d9df25d9181c",
                "text": "string"
              }
            ],
            "description": "string",
            "index": 1,
            "openResponseFormat": "string",
            "text": "string"
          }
        ]
      },
    };

    setUp(() {
      mockApiClient = MockApiClient();
      interactionApi = InteractionApi(mockApiClient);
    });

    test('interaction create returns interaction when given token', () async {
      // Arrange
      const type = 1;
      const description = 'test';
      const speciesId = '2d22';
      const location = {"latitude": -90.123, "longitude": -180.123};
      var timestamp = DateTime(2024, 10, 16, 8, 29, 36, 381, 911);

      final response = http.Response(jsonEncode(responseJson), HttpStatus.ok);

      when(mockApiClient.post(
        'interaction/',
        {
          "description": description,
          "location": location,
          "speciesID": speciesId,
          "typeID": type,
          "timestamp": timestamp.toUtc().toIso8601String(),
        },
        authenticated: true,
      )).thenAnswer((_) async {
        return response;
      });

      // Act
      final result = await interactionApi.create(
        description,
        Location.fromJson(location),
        speciesId,
        type,
        timestamp,
      );

      // Assert
      expect(result, isA<Interaction>());
      expect(result.description, description);
      expect(result.location.latitude, location['latitude']);
      expect(result.location.longitude, location['longitude']);
      expect(result.species.id, speciesId);
      expect(result.type.id, type);

      expect(result.timestamp.year, timestamp.year);
      expect(result.timestamp.month, timestamp.month);
      expect(result.timestamp.day, timestamp.day);
      expect(result.timestamp.hour, timestamp.hour);
      expect(result.timestamp.minute, timestamp.minute);
      expect(result.timestamp.microsecond, timestamp.microsecond);
    });

    test(
        'interaction create returns interaction with questionnaire when given token',
        () async {
      // Arrange
      const type = 1;
      const description = 'test';
      const speciesId = '2d22';
      const location = {"latitude": -90.123, "longitude": -180.123};
      var questionnaire = Questionnaire(
        id: "4d44",
        experiment: Experiment(
          id: "3d33",
          description: "This is a description",
          name: "Experiment test",
          start: DateTime(12, 12, 2021),
          end: DateTime(12, 12, 2021),
          user: User(id: "1d11", email: "test@test.nl"),
        ),
        interactionType: InteractionType(
          id: 1,
          name: "interaction test",
          description: "interaction description",
        ),
        name: "questionnaire name",
        questions: [
          Question(
            id: "6d66",
            allowMultipleResponse: true,
            allowOpenResponse: false,
            answers: [
              Answer(
                id: "7d77",
                index: 0,
                nextQuestionId: "8d88",
                text: "yes",
              ),
            ],
            description: "Answer description",
            index: 0,
            openResponseFormat: "500",
            text: "Question text",
          ),
        ],
      );
      var timestamp = DateTime(2024, 10, 16, 8, 29, 36, 381, 911);

      final response = http.Response(jsonEncode(responseJson), HttpStatus.ok);

      when(mockApiClient.post(
        'interaction/',
        {
          "description": description,
          "location": location,
          "speciesID": speciesId,
          "typeID": type,
          "timestamp": timestamp.toUtc().toIso8601String(),
        },
      )).thenAnswer((_) async {
        return response;
      });

      // Act
      final result = await interactionApi.create(
        description,
        Location.fromJson(location),
        speciesId,
        type,
        timestamp,
      );

      // Assert
      expect(result, isA<Interaction>());
      expect(result.description, description);
      expect(result.location.latitude, location['latitude']);
      expect(result.location.longitude, location['longitude']);
      expect(result.species.id, speciesId);
      expect(result.type.id, type);
      expect(result.questionnaire!.id, questionnaire.id);
      expect(result.questionnaire!.experiment.id, questionnaire.experiment.id);
      expect(result.questionnaire!.interactionType.id,
          questionnaire.interactionType.id);
      expect(result.questionnaire!.questions![0].id,
          questionnaire.questions![0].id);

      expect(result.timestamp.year, timestamp.year);
      expect(result.timestamp.month, timestamp.month);
      expect(result.timestamp.day, timestamp.day);
      expect(result.timestamp.hour, timestamp.hour);
      expect(result.timestamp.minute, timestamp.minute);
      expect(result.timestamp.microsecond, timestamp.microsecond);
    });

    test('interaction create throws exception when given invalid speciesId',
        () async {
      // Arrange
      const type = 1;
      const description = 'test';
      const speciesId = '9d99';
      const location = {"latitude": -90, "longitude": -180};
      var timestamp = DateTime(2024, 10, 16, 8, 29, 36, 381, 911);

      var responseJson = {
        "title": "Bad Request",
        "status": 400,
        "detail": "(speciesID)=(9d99) does not exist."
      };
      final response =
          http.Response(jsonEncode(responseJson), HttpStatus.badRequest);

      when(mockApiClient.post(
        'interaction/',
        {
          "description": description,
          "location": location,
          "speciesID": speciesId,
          "typeID": type,
          "timestamp": timestamp.toUtc().toIso8601String(),
        },
        authenticated: true,
      )).thenAnswer((_) async {
        return response;
      });

      // Act & Assert
      expect(
          interactionApi.create(
            description,
            Location.fromJson(location),
            speciesId,
            type,
            timestamp,
          ),
          throwsA(isA<Exception>()));
    });

    test('get my interactions returns list of interactions', () async {
      // Arrange
      final response = http.Response(jsonEncode([responseJson]), HttpStatus.ok);

      when(mockApiClient.get(
        'interactions/me/',
        authenticated: true,
      )).thenAnswer((_) async {
        return response;
      });

      // Act
      final result = await interactionApi.getMyInteractions();

      // Assert
      expect(result, isA<List<Interaction>>());
      expect(result[0].description, description);
      expect(result[0].location.latitude, location['latitude']);
      expect(result[0].location.longitude, location['longitude']);
      expect(result[0].species.id, speciesId);
      expect(result[0].type.id, type);
    });

    test('interaction create throws exception when given invalid speciesId',
        () async {
      // Arrange
      var responseJson = {
        "title": "Unauthorized",
        "status": 403,
        "detail": "You do not have permission to perform this action."
      };
      final response =
          http.Response(jsonEncode(responseJson), HttpStatus.unauthorized);

      when(mockApiClient.get(
        'interactions/me/',
        authenticated: true,
      )).thenAnswer((_) async {
        return response;
      });

      // Act & Assert
      expect(interactionApi.getMyInteractions(), throwsA(isA<Exception>()));
    });
  });
}
