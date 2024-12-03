import 'package:wildlife_api_connection/models/interaction_type.dart';
import 'package:wildlife_api_connection/models/location.dart';
import 'package:wildlife_api_connection/models/questionnaire.dart';
import 'package:wildlife_api_connection/models/species.dart';
import 'package:wildlife_api_connection/models/user.dart';

class Interaction {
  User user;
  String? id;
  String description;
  Location location;
  Species species;
  InteractionType type;
  Questionnaire? questionnaire;

  Interaction({
    required this.user,
    required this.description,
    required this.location,
    required this.species,
    required this.type,
    this.id,
    this.questionnaire,
  });

  factory Interaction.fromJson(Map<String, dynamic> json) {
    Questionnaire? questionnaire;

    if (json['questionnaire'] != null) {
      questionnaire = Questionnaire.fromJson(json['questionnaire']);
    }

    return Interaction(
      user: User.fromJson(json['user']),
      id: json['ID'],
      description: json['description'],
      location: Location.fromJson(json['location']),
      species: Species.fromJson(json['species']),
      type: InteractionType.fromJson(json['type']),
      questionnaire: questionnaire,
    );
  }
}
