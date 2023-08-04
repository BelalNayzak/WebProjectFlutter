import 'package:flutter/material.dart';
import 'package:web_project1/screens/portrait_screens/project_details_portrait_screen.dart';
import 'package:web_project1/widgets/span_text_widget.dart';

import '../constants/font_sizes.dart';
import '../models/app_bar_model.dart';
import '../models/footer_model.dart';
import '../widgets/app_bar_widget.dart';
import '../widgets/footer_widget.dart';

class ProjectDetailsScreen extends StatelessWidget {
  static const routeName = '/projects-details';

  const ProjectDetailsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final scrollControllerServiceDetails = ScrollController();
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
        controller: scrollControllerServiceDetails,
        child: SingleChildScrollView(
          controller: scrollControllerServiceDetails,
          child: Container(
            decoration: const BoxDecoration(
              image: DecorationImage(
                image: AssetImage(
                    'assets/images/project-details/ProjectDetailsBackGround.png'),
                fit: BoxFit.fill,
              ),
            ),
            child: MediaQuery.of(context).orientation == Orientation.landscape
                ? Column(
                    children: [
                      Stack(
                        children: [
                          Image.asset(
                              'assets/images/project-details/ProjDet1.png',
                              width: standardSize.width),
                          Positioned(
                            bottom: 0,
                            child: Image.asset(
                                'assets/images/project-details/ProjDet4.png',
                                width: standardSize.width),
                          ),
                          Positioned(
                            top: standardSize.width * 0.16,
                            left: standardSize.width * 0.16,
                            child: Text(
                              'Project\nDetails',
                              style: TextStyle(
                                  color: Colors.white,
                                  height: 1,
                                  fontSize: standardSize.width * 0.035,
                                  fontWeight: FontWeight.w700),
                            ),
                          ),
                        ],
                      ),
                      Container(
                        padding: EdgeInsets.symmetric(
                          vertical: 20,
                          horizontal: standardSize.width * 0.16,
                        ),
                        child: Column(
                          children: [
                            Image.asset(
                                'assets/images/project-details/ProjDet2.png'),
                            Padding(
                              padding: const EdgeInsets.only(top: 50),
                              child: Row(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  SizedBox(
                                    width: standardSize.width * 0.44,
                                    child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: const [
                                        Text(
                                          'Project Description',
                                          style: TextStyle(
                                              color: Colors.black,
                                              fontSize: 20,
                                              fontWeight: FontWeight.w700),
                                        ),
                                        SizedBox(height: 20),
                                        Text(
                                          "UX design refers to the term “user experience design”, while UI stands for “user interface design”. Both elements are crucial to a product and work closely together. But despite their professional relationship, the roles themselves are quite different, referring to very different aspects of the product development process and the design discipline.",
                                          style: TextStyle(
                                            color: Colors.black,
                                            fontSize: 12,
                                          ),
                                        ),
                                        SizedBox(height: 20),
                                        Text(
                                          "In relation to websites and apps, UI design considers the look, feel, and interactivity of the product. It’s all about making sure that the user interface of a product is as intuitive as possible, and that means carefully considering each and every visual,",
                                          style: TextStyle(
                                            color: Colors.black,
                                            fontSize: 12,
                                          ),
                                        ),
                                        SizedBox(height: 40),
                                        Text(
                                          'Tools',
                                          style: TextStyle(
                                              color: Colors.black,
                                              fontSize: 20,
                                              fontWeight: FontWeight.w700),
                                        ),
                                        SizedBox(height: 20),
                                        Text(
                                          "Many UX designers, developers, and entrepreneurs take pride in how hard it was to solve hard challenges. I don’t. I hope to convince you not to either. I’m known for enjoying the process of solving impossible problems, but the way I do it is not obvious. I didn’t invent this method. I learned it first-hand from a master.",
                                          style: TextStyle(
                                            color: Colors.black,
                                            fontSize: 12,
                                          ),
                                        ),
                                        SizedBox(height: 40),
                                        Text(
                                          'Feedback',
                                          style: TextStyle(
                                              color: Colors.black,
                                              fontSize: 20,
                                              fontWeight: FontWeight.w700),
                                        ),
                                        SizedBox(height: 20),
                                        Text(
                                          "Many UX designers, developers, and entrepreneurs take pride in how hard it was to solve hard challenges. I don’t. I hope to convince you not to either. I’m known for enjoying the process of solving impossible problems, but the way I do it is not obvious. I didn’t invent this method. I learned it first-hand from a master.",
                                          style: TextStyle(
                                            color: Colors.black,
                                            fontSize: 12,
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                  Container(
                                    margin: EdgeInsets.only(
                                        left: standardSize.width * 0.02),
                                    child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: const [
                                        Padding(
                                          padding: EdgeInsets.only(bottom: 20),
                                          child: Text(
                                            'Information',
                                            style: TextStyle(
                                                color: Colors.black,
                                                fontSize: 20,
                                                fontWeight: FontWeight.w700),
                                          ),
                                        ),
                                        SpanTextWidget(
                                            textAlign: TextAlign.left,
                                            textsList: [
                                              TextSpan(
                                                text: 'CLIENT :  ',
                                                style: TextStyle(
                                                    color: Colors.black,
                                                    fontSize: 10,
                                                    fontWeight:
                                                        FontWeight.w800),
                                              ),
                                              TextSpan(
                                                text: 'ORIXY THEME',
                                                style: TextStyle(
                                                    color: Colors.black,
                                                    fontSize: 10,
                                                    fontWeight:
                                                        FontWeight.w700),
                                              ),
                                            ]),
                                        Padding(
                                          padding: EdgeInsets.symmetric(
                                              vertical: 10),
                                          child: SpanTextWidget(
                                              textAlign: TextAlign.left,
                                              textsList: [
                                                TextSpan(
                                                  text: 'CATEGORY :  ',
                                                  style: TextStyle(
                                                      color: Colors.black,
                                                      fontSize: 10,
                                                      fontWeight:
                                                          FontWeight.w800),
                                                ),
                                                TextSpan(
                                                  text: 'UI/UX DESIGN',
                                                  style: TextStyle(
                                                      color: Colors.black,
                                                      fontSize: 10,
                                                      fontWeight:
                                                          FontWeight.w700),
                                                ),
                                              ]),
                                        ),
                                        Padding(
                                          padding: EdgeInsets.symmetric(
                                              vertical: 10),
                                          child: SpanTextWidget(
                                              textAlign: TextAlign.left,
                                              textsList: [
                                                TextSpan(
                                                  text: 'DURATION :  ',
                                                  style: TextStyle(
                                                      color: Colors.black,
                                                      fontSize: 10,
                                                      fontWeight:
                                                          FontWeight.w800),
                                                ),
                                                TextSpan(
                                                  text: '3 MONTHS',
                                                  style: TextStyle(
                                                      color: Colors.black,
                                                      fontSize: 10,
                                                      fontWeight:
                                                          FontWeight.w700),
                                                ),
                                              ]),
                                        ),
                                        Padding(
                                          padding: EdgeInsets.symmetric(
                                              vertical: 10),
                                          child: SpanTextWidget(
                                              textAlign: TextAlign.left,
                                              textsList: [
                                                TextSpan(
                                                  text: 'CLIENT :  ',
                                                  style: TextStyle(
                                                      color: Colors.black,
                                                      fontSize: 10,
                                                      fontWeight:
                                                          FontWeight.w800),
                                                ),
                                                TextSpan(
                                                  text: 'ORIXY THEME',
                                                  style: TextStyle(
                                                      color: Colors.black,
                                                      fontSize: 10,
                                                      fontWeight:
                                                          FontWeight.w700),
                                                ),
                                              ]),
                                        ),
                                        Padding(
                                          padding: EdgeInsets.symmetric(
                                              vertical: 10),
                                          child: SpanTextWidget(
                                              textAlign: TextAlign.left,
                                              textsList: [
                                                TextSpan(
                                                  text: 'CLIENT :  ',
                                                  style: TextStyle(
                                                      color: Colors.black,
                                                      fontSize: 10,
                                                      fontWeight:
                                                          FontWeight.w800),
                                                ),
                                                TextSpan(
                                                  text: 'ORIXY THEME',
                                                  style: TextStyle(
                                                      color: Colors.black,
                                                      fontSize: 10,
                                                      fontWeight:
                                                          FontWeight.w700),
                                                ),
                                              ]),
                                        ),
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.symmetric(vertical: 50),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                crossAxisAlignment: CrossAxisAlignment.end,
                                children: [
                                  Container(
                                    padding: EdgeInsets.only(bottom: 30),
                                    width: standardSize.width * .3,
                                    child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.center,
                                      children: [
                                        Text(
                                          'Unique results are produced\nby our unique process.',
                                          style: TextStyle(
                                              color: Colors.black,
                                              fontSize: 30,
                                              fontWeight: FontWeight.w700),
                                          textAlign: TextAlign.center,
                                        ),
                                        Padding(
                                          padding:
                                              const EdgeInsets.only(top: 30),
                                          child: FilledButton(
                                            onPressed: () {},
                                            style: FilledButton.styleFrom(
                                              backgroundColor:
                                                  const Color(0xff6b45b3),
                                              shape: RoundedRectangleBorder(
                                                borderRadius:
                                                    BorderRadius.circular(8),
                                              ),
                                              padding:
                                                  const EdgeInsets.symmetric(
                                                      horizontal: 30,
                                                      vertical: 20),
                                            ),
                                            child: const Text(
                                              "Get in Touch",
                                              textAlign: TextAlign.center,
                                              style: TextStyle(
                                                color: Colors.white,
                                                fontWeight: FontWeight.w400,
                                                fontSize: 18,
                                              ),
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                  Image.asset(
                                    'assets/images/project-details/ProjDet3.png',
                                    width: standardSize.width * 0.2,
                                  )
                                ],
                              ),
                            )
                          ],
                        ),
                      ),
                      FooterWidget(footerModel: footerModelData),
                    ],
                  )
                : const ProjectDetailsPortraitScreen(),
          ),
        ),
      ),
    );
  }
}
