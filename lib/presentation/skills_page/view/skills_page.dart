import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:potfolio/core/constants/colour.dart';

class Skills_page extends StatefulWidget {
  const Skills_page({super.key});

  @override
  State<Skills_page> createState() => _Skills_pageState();
}

class _Skills_pageState extends State<Skills_page> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: double.infinity,
        width: double.infinity,
        decoration: BoxDecoration(
            image: DecorationImage(
                image: AssetImage(
                  "assets/images/bg.jpeg",
                ),
                fit: BoxFit.fill)),
        child: SingleChildScrollView(
          child: Column(
            children: [
              Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(top: 150, left: 60),
                    child: Container(
                      child: Text(
                        "Technical skill",
                        style: TextStyle(
                            fontSize: 40,
                            fontWeight: FontWeight.bold,
                            color: colorconstant.yellow),
                      ),
                    ),
                  ),
                ],
              ),
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(top: 20, left: 80),
                    child: Container(
                      child: Text(
                        "FLUTTER \n\n DART \n\n PROVIDER \n\n HIVE \n\n API \n\n SHARED PREFERENCE \n\n C-PROGRAMMING \n\n DBMS \n\n OPERATING SYSTEM",
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            color: colorconstant.white,
                            fontSize: 20),
                      ),
                    ),
                  ),
                  Stack(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 500),
                        child: Container(
                          height: 400,
                          width: 400,
                          child: Lottie.asset(
                            "assets/animations/skills.json",
                            fit: BoxFit.cover,
                            // animate: true,
                            //repeat: true,
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
