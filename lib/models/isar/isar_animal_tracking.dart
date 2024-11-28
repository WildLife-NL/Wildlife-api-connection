import 'package:isar/isar.dart';

part 'isar_animal_tracking.g.dart';

@collection
class IsarAnimalTracking {
  final int id;
  final String description;
  final int latitude;
  final int longitude;
  final DateTime locationTimestamp;
  final String name;
  final String speciesId;

  IsarAnimalTracking({
    required this.id,
    required this.description,
    required this.latitude,
    required this.longitude,
    required this.locationTimestamp,
    required this.name,
    required this.speciesId,
  });

  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'description': description,
      'latitude': latitude,
      'longitude': longitude,
      'locationTimestamp': locationTimestamp.toIso8601String(),
      'name': name,
      'speciesId': speciesId,
    };
  }
}
