import 'package:wildlife_api_connection/models/answer.dart';

class Question {
  String id;
  bool allowMultipleResponse;
  bool allowOpenResponse;
  List<Answer> answers;
  String description;
  int index;
  String? openResponseFormat;
  String text;

  Question({
    required this.id,
    required this.allowMultipleResponse,
    required this.allowOpenResponse,
    required this.answers,
    required this.description,
    required this.index,
    required this.text,
    this.openResponseFormat,
  });

  factory Question.fromJson(Map<String, dynamic> json) => Question(
        id: json["ID"],
        allowMultipleResponse: json["allowMultipleResponse"],
        allowOpenResponse: json["allowOpenResponse"],
        answers:
            List<Answer>.from(json["answers"].map((x) => Answer.fromJson(x))),
        description: json["description"],
        index: json["index"],
        openResponseFormat: json["openResponseFormat"],
        text: json["text"],
      );

  Map<String, dynamic> toJson() => {
        "ID": id,
        "allowMultipleResponse": allowMultipleResponse,
        "allowOpenResponse": allowOpenResponse,
        "answers": List<dynamic>.from(answers.map((x) => x.toJson())),
        "description": description,
        "index": index,
        "openResponseFormat": openResponseFormat,
        "text": text,
      };
}
