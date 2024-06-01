import 'package:flutter/material.dart';
import 'package:potfolio/core/constants/colour.dart';

class Project_page extends StatefulWidget {
  const Project_page({super.key});

  @override
  State<Project_page> createState() => _Project_pageState();
}

class _Project_pageState extends State<Project_page> {
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
              // Row(
              //   children: [
              //     Padding(
              //       padding: const EdgeInsets.only(top: 200, left: 50),
              //       child: Container(
              //         child: Text(
              //           "EDUCATION",
              //           style: TextStyle(
              //               fontSize: 30,
              //               fontWeight: FontWeight.bold,
              //               color: Colors.amber),
              //         ),
              //       ),
              //     ),
              //   ],
              // ),
              // Row(
              //   children: [
              //     Padding(
              //       padding:
              //           const EdgeInsets.only(top: 20, bottom: 20, left: 50),
              //       child: Container(
              //         child: Text(
              //           " Bachelor of Science in Computer Science \n    University of Calicut \n    Completed in 2023 \n Higher secondary education \n    St Joseph EMHSS SCHOOL \n    Kerala State Board \n    Completed in 2020 \n High School education \n    Crescent public school \n    Central Board of Secondary Education \n    Completed in 2018",
              //           style: TextStyle(color: Colors.white),
              //         ),
              //       ),
              //     ),
              //   ],
              // ),
              Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 50, top: 150),
                    child: Container(
                      child: Text(
                        "PROJECTS",
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
                children: [
                  Padding(
                    padding: const EdgeInsets.only(top: 20, left: 50),
                    child: Container(
                      child: Text(
                        " SMART HOME AUTOMATION USING IOT \n\n    The smart home automation helps to control the power supply of the electrical devices. It is control by using a smart phone.\n\n NEWS APPLICATION \n\n    This application is created by using API. It displays the searched data on the screen along with images. \n\n QR CODE GENERATOR AND SCANNER \n\n    This application generate QR Code based on the data given in the textfield.",
                        style: TextStyle(
                          color: colorconstant.white,
                          fontSize: 20,
                        ),
                      ),
                    ),
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
