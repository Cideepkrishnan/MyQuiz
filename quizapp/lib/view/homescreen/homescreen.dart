import 'package:flutter/material.dart';
import 'package:quizapp/database/database.dart';

class homescreen extends StatefulWidget {
  const homescreen({super.key});

  @override
  State<homescreen> createState() => _homescreenState();
}

class _homescreenState extends State<homescreen> {
  int? ans;
  int? value;
  int Quescount = 0;
  int QuesNo = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
            height: double.infinity,
            width: double.infinity,
            child: Image.asset(
              "assets/images/jason-leung-Xaanw0s0pMk-unsplash.jpg",
              fit: BoxFit.cover,
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 30, top: 40),
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.only(right: 100),
                  child: Text(
                    "Question ",
                    style: TextStyle(
                        fontSize: 22,
                        fontWeight: FontWeight.bold,
                        height: 1.5,
                        color: Colors.black),
                    textAlign: TextAlign.left,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(right: 30),
                  child: Container(
                    width: 320,
                    height: 201,
                    decoration: BoxDecoration(
                        color: Color.fromARGB(255, 96, 92, 97),
                        borderRadius: BorderRadius.circular(10)),
                    child: Center(
                      child: Text(
                        DataBase.quizData[QuesNo]['question'],
                        style: TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.bold,
                          fontSize: 22,
                        ),
                        textAlign: TextAlign.center,
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: 30,
                ),
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.only(right: 30),
                    child: ListView.builder(
                      itemCount: 4,
                      itemBuilder: (context, index) => Padding(
                        padding: EdgeInsetsDirectional.all(15),
                        child: InkWell(
                          onTap: () {
                            setState(() {
                              value = index;
                              value == DataBase.quizData[QuesNo]['answer'];
                            });
                          },
                          child: Container(
                            height: 50,
                            width: 200,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              color: value == index
                                  ? value == DataBase.quizData[QuesNo]['answer']
                                      ? Colors.green
                                      : Colors.red
                                  : Color.fromARGB(255, 9, 89, 237),
                            ),
                            child: Center(
                              child: Text(
                                DataBase.quizData[QuesNo]['options'][index],
                                style: TextStyle(
                                    fontSize: 18,
                                    fontWeight: FontWeight.w700,
                                    color: Colors.black),
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
                InkWell(
                  onTap: () {
                    setState(() {
                      QuesNo++;
                      value = 5;
                      Quescount < 9;
                    });
                  },
                  child: Padding(
                    padding: const EdgeInsets.only(bottom: 40),
                    child: Container(
                      height: 50,
                      width: 150,
                      decoration: BoxDecoration(
                          color: Colors.black,
                          borderRadius: BorderRadius.circular(15)),
                      child: Center(
                        child: Text(
                          "Next",
                          style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                            fontSize: 18,
                          ),
                        ),
                      ),
                    ),
                  ),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
