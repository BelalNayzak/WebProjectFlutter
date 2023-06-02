import 'package:flutter/material.dart';
import 'package:web_project1/widgets/home_widgets/get_in_touch_widget.dart';

import '../models/app_bar_model.dart';
import '../models/footer_model.dart';
import '../widgets/app_bar_widget.dart';
import '../widgets/footer_widget.dart';
import '../widgets/span_text_widget.dart';
import 'project_details_screen.dart';

class ProjectsScreen extends StatelessWidget {
  static const routeName = '/projects';

  const ProjectsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final scrollControllerProjectsScreen = ScrollController();
    final standardSize = MediaQuery.of(context).size;

    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        backgroundColor: const Color.fromRGBO(2, 3, 3, 0.15),
        flexibleSpace:
            AppBarWidget(routeName: routeName, appBarModel: appBarModelData),
      ),
      body: Scrollbar(
        thumbVisibility: true,
        trackVisibility: true,
        controller: scrollControllerProjectsScreen,
        child: SingleChildScrollView(
          controller: scrollControllerProjectsScreen,
          child: Stack(
            children: [
              Image.asset('assets/images/projects/Projects.png'),
              Column(
                //crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(height: standardSize.width * 0.165),
                  Container(
                    alignment: Alignment.centerLeft,
                    height: standardSize.width * 0.065,
                    margin: EdgeInsets.symmetric(
                        horizontal: standardSize.width * 0.155),
                    color: Colors.white.withOpacity(0.15),
                    child: SpanTextWidget(
                      textAlign: TextAlign.left,
                      textsList: [
                        TextSpan(
                          text: "Projects\n",
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: standardSize.width * 0.035,
                            fontFamily: "Kanit",
                            fontWeight: FontWeight.w700,
                          ),
                        ),
                        TextSpan(
                          text: " HOME ",
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: standardSize.width * 0.008,
                            fontWeight: FontWeight.w800,
                            letterSpacing: 1,
                          ),
                        ),
                        TextSpan(
                          text: "> ",
                          style: TextStyle(
                            color: const Color(0xfffecc05),
                            fontSize: standardSize.width * 0.01,
                            fontWeight: FontWeight.w800,
                          ),
                        ),
                        TextSpan(
                          text: "PROJECT DARK",
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: standardSize.width * 0.008,
                            fontWeight: FontWeight.w800,
                            letterSpacing: 1,
                          ),
                        )
                      ],
                    ),
                  ),
                  Container(
                    height: standardSize.width * 0.1,
                    margin: EdgeInsets.only(
                      top: standardSize.width * 0.115,
                      left: standardSize.width * 0.155,
                      right: standardSize.width * 0.155,
                    ),
                    color: Colors.white.withOpacity(0.15),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Padding(
                              padding: EdgeInsets.symmetric(
                                  horizontal: standardSize.width * 0.01),
                              child: const Text(
                                'Our Work',
                                style: TextStyle(fontWeight: FontWeight.w700),
                              ),
                            ),
                            Image.asset(
                              'assets/images/projects/pseudoR.png',
                              height: standardSize.width * 0.0015,
                              width: standardSize.width * 0.025,
                              fit: BoxFit.fitWidth,
                            )
                          ],
                        ),
                        Text(
                          'Professional Experience',
                          style: TextStyle(
                              fontSize: standardSize.width * 0.022,
                              fontWeight: FontWeight.w700),
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            TextButton(
                                onPressed: () {},
                                child: const Text(
                                  'ALL',
                                  style: TextStyle(color: Colors.black),
                                )),
                            TextButton(
                                onPressed: () {},
                                child: const Text(
                                  'DEVELOPMENT',
                                  style: TextStyle(color: Colors.black),
                                )),
                            TextButton(
                                onPressed: () {},
                                child: const Text(
                                  'WEB DESIGN',
                                  style: TextStyle(color: Colors.black),
                                )),
                            TextButton(
                                onPressed: () {},
                                child: const Text(
                                  'UI/UX',
                                  style: TextStyle(color: Colors.black),
                                )),
                            TextButton(
                                onPressed: () {},
                                child: const Text(
                                  'TECHNOLOGY',
                                  style: TextStyle(color: Colors.black),
                                )),
                          ],
                        )
                      ],
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(
                        top: standardSize.width * 0.015,
                        right: standardSize.width * 0.52),
                    child: Text(
                      'Web Development',
                      style: TextStyle(
                          fontSize: standardSize.width * 0.017,
                          fontWeight: FontWeight.w700),
                    ),
                  ),
                  Container(
                    height: standardSize.width * 0.65,
                    color: Colors.white.withOpacity(0.15),
                    margin: EdgeInsets.symmetric(
                        horizontal: standardSize.width * 0.15),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Column(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            InkWell(
                              onTap: () {
                                Navigator.of(context)
                                    .pushNamed(ProjectDetailsScreen.routeName);
                              },
                              child: Image.asset(
                                'assets/images/projects/Project1.png',
                                width: standardSize.width * 0.22,
                              ),
                            ),
                            InkWell(
                              onTap: () {
                                Navigator.of(context)
                                    .pushNamed(ProjectDetailsScreen.routeName);
                              },
                              child: Image.asset(
                                'assets/images/projects/Project2.png',
                                width: standardSize.width * 0.22,
                              ),
                            ),
                          ],
                        ),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            InkWell(
                              onTap: () {
                                Navigator.of(context)
                                    .pushNamed(ProjectDetailsScreen.routeName);
                              },
                              child: Image.asset(
                                'assets/images/projects/Project3.png',
                                width: standardSize.width * 0.22,
                              ),
                            ),
                            InkWell(
                              onTap: () {
                                Navigator.of(context)
                                    .pushNamed(ProjectDetailsScreen.routeName);
                              },
                              child: Image.asset(
                                'assets/images/projects/Project4.png',
                                width: standardSize.width * 0.22,
                              ),
                            ),
                          ],
                        ),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            InkWell(
                              onTap: () {
                                Navigator.of(context)
                                    .pushNamed(ProjectDetailsScreen.routeName);
                              },
                              child: Image.asset(
                                'assets/images/projects/Project5.png',
                                width: standardSize.width * 0.22,
                              ),
                            ),
                            InkWell(
                              onTap: () {
                                Navigator.of(context)
                                    .pushNamed(ProjectDetailsScreen.routeName);
                              },
                              child: Image.asset(
                                'assets/images/projects/Project6.png',
                                width: standardSize.width * 0.22,
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                  //const GetInTouchWidget()
                ],
              ),
              FooterWidget(footerModel: footerModelData),
            ],
          ),
        ),
      ),
    );
  }
}
