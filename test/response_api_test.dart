import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/mockito.dart';
import 'package:wildlife_api_connection/response_api.dart';

import 'mocks/api_mocks.mocks.dart';

void main() {
  group('ResponseAPI', () {
    late MockApiClient mockApiClient;
    late ResponseApi responseApi;

    setUp(() {
      mockApiClient = MockApiClient();
      responseApi = ResponseApi(mockApiClient);
    });

    test('add response success', () async {
      const interactionId = "1d11";
      const questionId = "2d22";
      const answerId = "3d33";
      const text = "this is a text";

      when(mockApiClient.post(
        'response/',
        {
          "interactionID": interactionId,
          "questionID": questionId,
          "answerID": answerId,
          "text": text,
        },
      ));

      responseApi.addResponse(interactionId, questionId, answerId, text);

      verify(mockApiClient.post(
        'response/',
        {
          "interactionID": interactionId,
          "questionID": questionId,
          "answerID": answerId,
          "text": text,
        },
      )).called(1);
    });
  });
}
