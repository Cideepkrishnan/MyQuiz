import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:quizapp/view/homescreen/homescreen.dart';

class splashscreen extends StatefulWidget {
  const splashscreen({super.key});

  @override
  State<splashscreen> createState() => _splashscreenState();
}

class _splashscreenState extends State<splashscreen> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    Future.delayed(Duration(seconds: 3)).then((value) => Navigator.push(context,
        MaterialPageRoute(builder: (context) => homescreen()))); //user screen
  }

  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
          height: double.infinity,
          width: double.infinity,
          child:
              // Image.asset(
              //   "assets/images/Android Large - 10.png",
              //   fit: BoxFit.fill,
              // ),
              Lottie.asset("assets/lottie/animation_ln09lsr4.json")),
    );
  }
}
