import 'package:wildlife_api_connection/api_client.dart';

class ResponseApi {
  final ApiClient client;

  ResponseApi(this.client);

  Future<void> addResponse(
    String interactionId,
    String questionId,
    String answerId,
    String text,
  ) async {
    await client.post(
      'response/',
      {
        "interactionID": interactionId,
        "questionID": questionId,
        "answerID": answerId,
        "text": text,
      },
      authenticated: true,
    );
  }
}
