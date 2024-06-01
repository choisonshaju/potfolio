import 'package:flutter/material.dart';
import 'package:potfolio/core/constants/colour.dart';
import 'package:potfolio/presentation/about_page/view/about_page.dart';
import 'package:potfolio/presentation/home_page/view/home_page.dart';
import 'package:potfolio/presentation/project_page/view/project_page.dart';
import 'package:potfolio/presentation/skills_page/view/skills_page.dart';

class Homescreen extends StatefulWidget {
  const Homescreen({
    super.key,
  });

  @override
  State<Homescreen> createState() => _HomescreenState();
}

class _HomescreenState extends State<Homescreen>
    with SingleTickerProviderStateMixin {
  // late TabController _controller;
  @override
  // void initState() {

  //   super.initState();
  //   _controller = TabController(length: 4, vsync: this, initialIndex: 0);
  //}

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 4,
      child: Scaffold(
        extendBodyBehindAppBar: true,
        appBar: PreferredSize(
          preferredSize: Size.fromHeight(150),
          child: AppBar(
            //bottomOpacity: 0,
            elevation: 0,
            forceMaterialTransparency: true,
            title: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                CircleAvatar(
                  backgroundColor: colorconstant.black87,
                  radius: 25,
                  child: Text(
                    "CS",
                    style: TextStyle(
                        fontSize: 30,
                        fontWeight: FontWeight.bold,
                        color: colorconstant.yellow),
                  ),
                ),
                Container(
                  height: 45,
                  width: 500,
                  decoration: BoxDecoration(
                    //color: Colors.grey[300],
                    borderRadius: BorderRadius.circular(25),
                  ),
                  child: TabBar(
                      indicator: BoxDecoration(
                        // color: Colors.black,
                        borderRadius: BorderRadius.circular(20),
                      ),
                      labelColor: colorconstant.white,
                      labelStyle: TextStyle(
                          // fontStyle: GoogleFonts.creepster,
                          fontSize: 18,
                          fontWeight: FontWeight.bold),
                      unselectedLabelColor: colorconstant.yellow,
                      unselectedLabelStyle:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 15),
                      tabs: [
                        Tab(
                          text: "HOME",
                        ),
                        Tab(
                          text: "SKILLS",
                        ),
                        Tab(
                          text: "PROJECTS",
                        ),
                        Tab(
                          text: "ABOUT ",
                        )
                      ]),
                ),
              ],
            ),

            //     bottom: TabBar(controller: _controller, tabs: [
            //       Tab(
            //         child: Text(
            //           "HOME",
            //           style: TextStyle(color: Colors.white),
            //         ),
            //       ),
            //       Tab(
            //         child: Text(
            //           "SKILLS",
            //           style: TextStyle(color: Colors.white),
            //         ),
            //       ),
            //       Tab(
            //         child: Text(
            //           "PROJECTS",
            //           style: TextStyle(color: Colors.white),
            //         ),
            //       ),
            //       Tab(
            //         child: Text(
            //           "ABOUT ME",
            //           style: TextStyle(color: Colors.white),
            //         ),
            //       ),
            //     ]),
            //   ),
            // ),
            // body: TabBarView(
            //   controller: _controller,
            //   children: [
            //     Home_page(),
            //     Skills_page(),
            //     Project_page(),
            //     About_page(),
            //   ],
            // ),
          ),
        ),
        body: Expanded(
          child: TabBarView(
            //   controller: _controller,
            children: [
              Home_page(),
              Skills_page(),
              Project_page(),
              About_page(),
            ],
          ),
        ),
      ),
    );
  }
}
