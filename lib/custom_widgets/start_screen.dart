import 'package:flutter/material.dart';

class StartScreen extends StatelessWidget {
  const StartScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
           Image.asset('assets/images/quiz-logo.png',
              width: 300,
           color: Color.fromARGB(150, 255, 255, 255)),
          const SizedBox(
            height: 80,
          ),
          const Text("Learn Flutter the Fun way!",
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 24)
          ),
          const SizedBox(
            height: 30,
          ),
          ElevatedButton.icon(
              onPressed: () {},
              style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.all(Colors.deepPurple),
                  shape: MaterialStateProperty.all(RoundedRectangleBorder(
                      borderRadius: BorderRadius.all(Radius.circular(1))))),
              icon: const Icon(
                Icons.arrow_forward,
                color: Colors.white,
              ),
              label: Text(
                "Start Quiz",
                style: TextStyle(color: Colors.white),
              ))
        ],
      ),
    );
  }
}
