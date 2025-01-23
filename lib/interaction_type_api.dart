import 'dart:convert';

import 'package:wildlife_api_connection/api_client.dart';
import 'package:wildlife_api_connection/models/interaction_type.dart';
import 'dart:io';

import 'package:http/http.dart' as http;

class InteractionTypeApi {
  final ApiClient client;

  InteractionTypeApi(this.client);

  Future<List<InteractionType>> getAll() async {
    http.Response response = await client.get(
      'interactionTypes/',
      authenticated: true,
    );

    List<dynamic>? json;

    if (response.statusCode == HttpStatus.ok) {
      json = jsonDecode(response.body);
      List<InteractionType> interactionTypes =
          (json as List).map((e) => InteractionType.fromJson(e)).toList();
      return interactionTypes;
    } else {
      throw Exception(json ?? "Failed to get interaction types");
    }
  }
}
