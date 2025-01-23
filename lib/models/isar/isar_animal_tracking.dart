import 'package:isar/isar.dart';
import 'package:wildlife_api_connection/models/animal_tracking.dart';

part 'isar_animal_tracking.g.dart';

@collection
class IsarAnimalTracking {
  Id id = Isar.autoIncrement;
  final double latitude;
  final double longitude;
  final DateTime locationTimestamp;
  final String name;
  final String speciesId;
  final String speciesName;
  final String speciesCommonName;

  IsarAnimalTracking({
    this.id = Isar.autoIncrement,
    required this.latitude,
    required this.longitude,
    required this.locationTimestamp,
    required this.name,
    required this.speciesId,
    required this.speciesName,
    required this.speciesCommonName,
  });

  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'latitude': latitude,
      'longitude': longitude,
      'locationTimestamp': locationTimestamp.toIso8601String(),
      'name': name,
      'speciesId': speciesId,
      'speciesName': speciesName,
      'speciesCommonName': speciesCommonName,
    };
  }

  factory IsarAnimalTracking.fromAnimalTracking(AnimalTracking animalTracking) {
    return IsarAnimalTracking(
      latitude: animalTracking.location.latitude,
      longitude: animalTracking.location.longitude,
      locationTimestamp: animalTracking.locationTimestamp,
      name: animalTracking.name,
      speciesId: animalTracking.species.id,
      speciesName: animalTracking.species.name,
      speciesCommonName: animalTracking.species.commonName,
    );
  }
}
