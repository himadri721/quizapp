import 'dart:convert';
import 'package:http/http.dart' as http;

class Question {
  String question;
  List<String> choices;
  String answer;

  Question(
      {required this.question, required this.choices, required this.answer});

  factory Question.fromJson(Map<String, dynamic> json) {
    List<String> choices = List<String>.from(json['incorrect_answers']);
    choices.add(json['correct_answer']);
    choices.shuffle();
    return Question(
      question: json['question'],
      choices: choices,
      answer: json['correct_answer'],
    );
  }
}

Future<List<Question>> fetchQuestions(int numberOfQuestions) async {
  const url = 'https://opentdb.com/api.php?amount=10&category=20&difficulty=medium&type=multiple';
  final response = await http.get(Uri.parse(url));
  if (response.statusCode == 200) {
    List<dynamic> data = json.decode(response.body)['results'];
    return data.map((json) => Question.fromJson(json)).toList();
  } else {
    throw Exception('Failed to load questions');
  }
}
