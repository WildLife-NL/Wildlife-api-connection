import 'dart:convert';
import 'dart:io';

import 'package:flutter_test/flutter_test.dart';
import 'package:http/http.dart' as http;
import 'package:mockito/mockito.dart';
import 'package:wildlife_api_connection/animal_api.dart';
import 'package:wildlife_api_connection/models/animal_tracking.dart';

import 'mocks/api_mocks.mocks.dart';

void main() {
  group('AnimalAPI', () {
    late MockApiClient mockApiClient;
    late AnimalApi animalApi;

    var responseJson = [
      {
        "ID": "1b0c3fa4-cb04-4589-b93e-30403459f675",
        "name": "Chester",
        "species": {
          "ID": "28775ecb-1af6-4b22-a87a-e15b1999d55c",
          "name": "Sus scrofa",
          "commonName": "Wild Zwijn"
        },
        "location": {"latitude": 51.44295, "longitude": 5.47954},
        "locationTimestamp": "2024-11-26T12:38:33.275089Z"
      },
      {
        "ID": "02f33a45-3a0b-4048-acf7-3d5270401323",
        "name": "Gaston",
        "species": {
          "ID": "28775ecb-1af6-4b22-a87a-e15b1999d55c",
          "name": "Sus scrofa",
          "commonName": "Wild Zwijn"
        },
        "location": {"latitude": 51.44298, "longitude": 5.47951},
        "locationTimestamp": "2024-11-26T12:38:33.28241Z"
      }
    ];

    setUp(() {
      mockApiClient = MockApiClient();
      animalApi = AnimalApi(mockApiClient);
    });

    test('get all animals success', () async {
      // Arrange
      final response = http.Response(jsonEncode(responseJson), HttpStatus.ok);

      when(mockApiClient.get(
        'animals/',
        authenticated: true,
      )).thenAnswer((_) async {
        return response;
      });

      // Act
      final result = await animalApi.getAllAnimalTrackings();

      // Assert
      expect(result, isA<List<AnimalTracking>>());
      expect(result.length, 2);
      expect(result[0].id, responseJson[0]['ID']);
    });
  });
}
