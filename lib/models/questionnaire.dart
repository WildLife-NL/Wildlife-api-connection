import 'package:wildlife_api_connection/models/experiment.dart';
import 'package:wildlife_api_connection/models/interaction_type.dart';
import 'package:wildlife_api_connection/models/question.dart';

class Questionnaire {
  String id;
  Experiment experiment;
  String? identifier;
  InteractionType interactionType;
  String name;
  List<Question>? questions;

  Questionnaire({
    required this.id,
    required this.experiment,
    required this.interactionType,
    required this.name,
    this.identifier,
    this.questions,
  });

  factory Questionnaire.fromJson(Map<String, dynamic> json) => Questionnaire(
        id: json["ID"],
        experiment: Experiment.fromJson(json["experiment"]),
        identifier: json["identifier"],
        interactionType: InteractionType.fromJson(json["interactionType"]),
        name: json["name"],
        questions: List<Question>.from(
            json["questions"].map((x) => Question.fromJson(x))),
      );

  Map<String, dynamic> toJson() {
    List<dynamic>? listQuestions;

    if (questions != null) {
      listQuestions = List<dynamic>.from(questions!.map((x) => x.toJson()));
    }

    return {
      "ID": id,
      "experiment": experiment.toJson(),
      "identifier": identifier,
      "interactionType": interactionType.toJson(),
      "name": name,
      "questions": listQuestions,
    };
  }
}
