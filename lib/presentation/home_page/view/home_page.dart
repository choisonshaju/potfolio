import 'package:flutter/material.dart';
import 'package:potfolio/core/constants/colour.dart';

import 'package:url_launcher/url_launcher.dart';

class Home_page extends StatefulWidget {
  const Home_page({super.key});

  @override
  State<Home_page> createState() => _Home_pageState();
}

class _Home_pageState extends State<Home_page> {
  void _launcherURL(String urlString) async {
    final Uri url = Uri.parse(urlString);
    if (await canLaunchUrl(url)) {
      await launchUrl(url);
    } else {
      throw "NOT ABLE TO LAUNCH";
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
      height: double.infinity,
      width: double.infinity,
      decoration: BoxDecoration(
          // color: Colors.black.withOpacity(0.66),
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
                      "HI, \n I AM CHOISON SHAJU \n FLUTTER DEVELOPER",
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
                  padding: const EdgeInsets.only(top: 30, left: 80),
                  child: Container(
                    width: 400,
                    child: Text(
                      "I am writing to express my interest in the FLUTTER DEVELOPER position that is currently available in your company. In addition to being a strong communicator and team worker.I am the type of personwho understands how much important is my role to success of your company. If I succeed in my application, I assure you that I will perform my duties to an exemplary standard to quickly become a team member who contributes positively to the organization's objectives.",
                      // "To obtain a challenging position at a recognised firm where I may grow my knowledge , abilities and learnings. Find a responsible job opportunity where I can put  my learning and skills to good use while contributing to the company's success.   ",
                      style: TextStyle(
                        color: colorconstant.white,
                        fontSize: 20,
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 300),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      CircleAvatar(
                        radius: 152,
                        backgroundColor: colorconstant.yellow,
                        child: CircleAvatar(
                          backgroundImage: AssetImage(
                            "assets/images/choison.png",
                          ),
                          backgroundColor: colorconstant.black87,
                          radius: 150,
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 20,
            ),
            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 80),
                  child: InkWell(
                    onTap: () {
                      _launcherURL(
                        "https://drive.google.com/file/d/1tB_mY-0tx4PcIZWwvgovyEG4l19IOpFx/view?usp=drivesdk",
                      );
                    },
                    child: Container(
                      height: 50,
                      width: 200,
                      decoration: BoxDecoration(
                        color: colorconstant.yellow,
                        borderRadius: BorderRadius.circular(25),
                      ),
                      child: Center(
                        child: Text("DOWNLOAD CV"),
                      ),
                    ),
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    ));
  }
}
