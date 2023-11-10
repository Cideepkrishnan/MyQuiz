import 'package:flutter/material.dart';
import 'package:quizapp/view/splashscreen/splashscreen.dart';

void main() {
  runApp(const quizapp());
}

class quizapp extends StatelessWidget {
  const quizapp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: splashscreen(),
    );
  }
}
