import 'package:flutter/material.dart';
import 'package:quiz_app/questions.dart';

import 'custom_widgets/start_screen.dart';

class QuizPage extends StatefulWidget{
  const QuizPage({super.key});

  @override
  State<QuizPage> createState() {
    return _QuizPageState();
  }

}

class _QuizPageState extends State<QuizPage>{
  Widget activeScreen = StartScreen();

  switchScreen(){
    setState(() {
      activeScreen = QuestionsPage();
    });
  }
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Container(
            decoration: const BoxDecoration(
                gradient: LinearGradient(
                    colors: [
                      Colors.deepPurple,
                      Colors.deepPurpleAccent
                    ],
                    begin: Alignment.topLeft,
                    end: Alignment.bottomRight

                )
            ),
            child: activeScreen
        ),
      ),
    );
  }

}