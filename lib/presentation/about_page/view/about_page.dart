import 'package:flutter/material.dart';
import 'package:potfolio/core/constants/colour.dart';

import 'package:url_launcher/url_launcher.dart';

class About_page extends StatefulWidget {
  const About_page({super.key});

  @override
  State<About_page> createState() => _About_pageState();
}

class _About_pageState extends State<About_page> {
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
          image: DecorationImage(
            image: AssetImage(
              "assets/images/bg.jpeg",
            ),
            fit: BoxFit.fill,
          ),
        ),
        child: Padding(
          padding: const EdgeInsets.only(top: 150),
          child: Column(
            children: [
              CircleAvatar(
                radius: 52,
                backgroundColor: colorconstant.yellow,
                child: CircleAvatar(
                  backgroundColor: colorconstant.black87,
                  backgroundImage: AssetImage(
                    "assets/images/choison.png",
                  ),
                  radius: 50,
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Container(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      child: Icon(
                        Icons.phone,
                        color: colorconstant.yellow,
                      ),
                    ),
                    SizedBox(
                      width: 20,
                    ),
                    Container(
                      child: Text(
                        "+91 6238357758",
                        style:
                            TextStyle(fontSize: 20, color: colorconstant.white),
                      ),
                    )
                  ],
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Container(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 85),
                      child: Container(
                        child: Icon(
                          Icons.email_outlined,
                          color: colorconstant.yellow,
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 20,
                    ),
                    // InkWell(
                    //   onTap: () {
                    //     _launcherURL(
                    //       "shajuchoison@gmail.com",
                    //     );
                    //   },
                    //  child:
                    Container(
                      child: Text(
                        "shajuchoison@gmail.com",
                        style:
                            TextStyle(fontSize: 20, color: colorconstant.white),
                      ),
                    ),
                    //  )
                  ],
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Container(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(10),
                      child: InkWell(
                        onTap: () {
                          _launcherURL(
                              "https://www.linkedin.com/in/choisonshaju");
                        },
                        child: Container(
                          height: 30,
                          width: 30,
                          child: Image.asset("assets/images/linkedin.png"),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(10),
                      child: InkWell(
                        onTap: () {
                          _launcherURL(
                              "https://www.instagram.com/choison_shaju/");
                        },
                        child: Container(
                          height: 30,
                          width: 30,
                          child: Image.asset("assets/images/insta.jpeg"),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(10),
                      child: InkWell(
                        onTap: () {
                          _launcherURL(
                              "https://www.facebook.com/choisonshaju.choisonshaju");
                        },
                        child: Container(
                          height: 30,
                          width: 30,
                          child: Image.asset(
                            "assets/images/facebook.png",
                            fit: BoxFit.fill,
                          ),
                        ),
                      ),
                    )
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
