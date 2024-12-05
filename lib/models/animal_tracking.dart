import 'package:wildlife_api_connection/models/isar/isar_animal_tracking.dart';
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

  factory AnimalTracking.fromIsar(IsarAnimalTracking isarAnimalTracking) {
    return AnimalTracking(
      id: isarAnimalTracking.id.toString(),
      location: Location(
        latitude: isarAnimalTracking.latitude.toDouble(),
        longitude: isarAnimalTracking.longitude.toDouble(),
      ),
      locationTimestamp: isarAnimalTracking.locationTimestamp,
      name: isarAnimalTracking.name,
      species: Species(
        id: isarAnimalTracking.speciesId,
        name: isarAnimalTracking.speciesName,
        commonName: isarAnimalTracking.speciesCommonName,
      ),
    );
  }
}
