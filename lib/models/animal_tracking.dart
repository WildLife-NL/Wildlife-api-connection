import 'package:wildlife_api_connection/models/location.dart';
import 'package:wildlife_api_connection/models/species.dart';

class AnimalTracking {
  String id;
  Location location;
  DateTime locationTimestamp;
  String name;
  Species species;

  AnimalTracking({
    required this.id,
    required this.location,
    required this.locationTimestamp,
    required this.name,
    required this.species,
  });

  factory AnimalTracking.fromJson(Map<String, dynamic> json) => AnimalTracking(
        id: json["ID"],
        location: Location.fromJson(json["location"]),
        locationTimestamp: DateTime.parse(json["locationTimestamp"]),
        name: json["name"],
        species: Species.fromJson(json["species"]),
      );

  Map<String, dynamic> toJson() => {
        "ID": id,
        "location": location.toJson(),
        "locationTimestamp": locationTimestamp.toIso8601String(),
        "name": name,
        "species": species.toJson(),
      };
}
