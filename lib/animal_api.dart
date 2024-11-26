import 'dart:convert';
import 'dart:io';

import 'package:http/http.dart' as http;
import 'package:wildlife_api_connection/api_client.dart';
import 'package:wildlife_api_connection/models/animal_tracking.dart';

class AnimalApi {
  final ApiClient client;

  AnimalApi(this.client);

  Future<List<AnimalTracking>> getAllAnimalTrackings() async {
    http.Response response = await client.get(
      'animals/',
      authenticated: true,
    );

    List<dynamic>? json;

    if (response.statusCode == HttpStatus.ok) {
      json = jsonDecode(response.body);
      List<AnimalTracking> trackings =
          (json as List).map((e) => AnimalTracking.fromJson(e)).toList();
      return trackings;
    } else {
      throw Exception(json ?? "Failed to get all animal trackings");
    }
  }
}
