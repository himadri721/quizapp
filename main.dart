import 'package:flutter/material.dart';
import 'package:quiz_app/quiz.dart';

void main() {
  runApp(TriviaQuizApp());
}

class TriviaQuizApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Trivia Quiz',
      theme: ThemeData(
        primarySwatch: Colors.red,
      ),
      home: mainpage(),
    );
  }
}

class mainpage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(46, 255, 255, 255),
      body:Column(
      
      children: <Widget>[
        Text('QUIZ',
      style: TextStyle(
        fontWeight: FontWeight.bold,
        color: Colors.black,
        fontSize: 30,
      ),),
      SizedBox(height:20),
  Align(
    alignment: Alignment.bottomCenter,
    child:
    Image.asset(
      'lib/images/1st.png',
     
    ),
  ),
   Text(
   'Embark on the Ultimate\nQuiz Adventure',
   style: TextStyle(
     fontWeight: FontWeight.bold,
     fontSize: 32,
     color: Colors.black,
   ),
 ),
MaterialButton(
  onPressed: () {
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => QuizPage(),
      ),
    );
  },
  child: Icon(Icons.arrow_forward),
  height: 20,
  minWidth: 20,), ],
 ),
    );
  }
}
