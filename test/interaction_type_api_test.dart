import 'dart:convert';
import 'dart:io';

import 'package:flutter_test/flutter_test.dart';
import 'package:http/http.dart' as http;
import 'package:mockito/mockito.dart';
import 'package:wildlife_api_connection/interaction_type_api.dart';
import 'package:wildlife_api_connection/models/interaction_type.dart';

import 'mocks/api_mocks.mocks.dart';

void main() {
  group('InteractionTypeAPI', () {
    late MockApiClient mockApiClient;
    late InteractionTypeApi interactionTypeApi;

    setUp(() {
      mockApiClient = MockApiClient();
      interactionTypeApi = InteractionTypeApi(mockApiClient);
    });

    test(
        'interactionType get all returns list of interaction types when given token',
        () async {
      // Arrange
      const id = 1;
      const name = 'test';
      const description = 'test';

      const responseJson = [
        {
          "ID": id,
          "nameNL": name,
          "descriptionNL": description,
        }
      ];

      final response = http.Response(jsonEncode(responseJson), HttpStatus.ok);

      when(mockApiClient.get(
        'interactionTypes/',
        authenticated: true,
      )).thenAnswer((_) async {
        return response;
      });

      // Act
      final result = await interactionTypeApi.getAll();

      // Assert
      expect(result, isA<List<InteractionType>>());
      expect(result[0].id, id);
      expect(result[0].name, description);
      expect(result[0].description, description);
    });

    test('interactionType get all throws exception when api returns error',
        () async {
      // Arrange
      const responseJson = {
        "title": "Unauthorized",
        "status": 403,
        "detail": "You do not have permission to perform this action."
      };

      final response =
          http.Response(jsonEncode(responseJson), HttpStatus.unauthorized);

      when(mockApiClient.get(
        'interactionTypes/',
        authenticated: true,
      )).thenAnswer((_) async {
        return response;
      });

      // Act & Assert
      expect(
        () async => await interactionTypeApi.getAll(),
        throwsA(isA<Exception>()),
      );
    });
  });
}
