import 'dart:convert';
import 'dart:io';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:shared_preferences/shared_preferences.dart';
import 'package:wildlife_api_connection/api_client.dart';
import 'package:wildlife_api_connection/models/user.dart';

class AuthApi {
  final ApiClient client;
  static const String url = 'https://wildlifenl-uu-michi011.apps.cl01.cp.its.uu.nl/auth/';
  static const Map<String, String> headers = {
    'Content-Type': 'application/json',
    'Accept': 'application/json, application/problem+json',
  };

  AuthApi(this.client);

  Future<Map<String, dynamic>> authenticate(
      String displayNameApp, String email) async {
    http.Response response = await client.post(
      url,
      {
        "displayNameApp": displayNameApp,
        "email": email,
      },
      authenticated: false,
      headers: headers,
    );

    Map<String, dynamic>? json;
    try {
      json = response.body.isNotEmpty ? jsonDecode(response.body) : null;
      debugPrint('Auth api: $json');
    } catch (_) {}

    if (response.statusCode == HttpStatus.ok) {
      return json ?? {};
    } else {
      throw Exception(json ?? "Failed to login");
    }
  }

  Future<User> authorize(String email, String code) async {
    http.Response response = await client.put(
      url,
      {
        "code": code,
        "email": email,
      },
      authenticated: false,
      headers: headers,
    );

    Map<String, dynamic>? json;
    try {
      json = jsonDecode(response.body);
      debugPrint('V1 Auth api: $json');
    } catch (_) {}

    if (response.statusCode == HttpStatus.ok) {
      SharedPreferences prefs = await SharedPreferences.getInstance();
      await prefs.setString('bearer_token', json!["token"]);
      User user = User.fromJson(json);
      return user;
    } else {
      throw Exception(json!["detail"]);
    }
  }
}
