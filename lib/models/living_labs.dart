import 'package:wildlife_api_connection/models/location.dart';

class LivingLabs {
  String id;
  List<Location> definition;
  String name;
  String commonName;

  LivingLabs({
    required this.id,
    required this.definition,
    required this.name,
    required this.commonName,
  });

  factory LivingLabs.fromJson(Map<String, dynamic> json) => LivingLabs(
        id: json["ID"],
        definition: json["definition"] == null
            ? []
            : List<Location>.from(
                json["definition"]!.map((x) => Location.fromJson(x))),
        name: json["name"],
        commonName: json["commonName"],
      );

  Map<String, dynamic> toJson() => {
        "ID": id,
        "definition": List<dynamic>.from(definition.map((x) => x.toJson())),
        "name": name,
        "commonName": commonName,
      };
}
