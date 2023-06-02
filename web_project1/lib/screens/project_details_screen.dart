import 'package:flutter/material.dart';
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
          child: Stack(
            children: [
              Image.asset('assets/images/project-details/ProjectDetails.png'),
              Column(
                children: [
                  Stack(
                    children: [
                      Image.asset('assets/images/project-details/ProjDet1.png',
                          width: standardSize.width),
                      Positioned(
                        bottom: 0,
                        child: Image.asset('assets/images/project-details/ProjDet4.png',
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
                    color: Colors.white,
                    height: standardSize.width * 1.15,
                    padding: EdgeInsets.only(
                      top: standardSize.width * 0.055,
                      left: standardSize.width * 0.155,
                      right: standardSize.width * 0.155,
                    ),
                    child: Column(
                      children: [
                        Image.asset('assets/images/project-details/ProjDet2.png'),
                        Padding(
                          padding:
                              EdgeInsets.only(top: standardSize.width * 0.04),
                          child: Row(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              SizedBox(
                                width: standardSize.width * 0.44,
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      'Project Description',
                                      style: TextStyle(
                                          color: Colors.black,
                                          fontSize: standardSize.width * .015,
                                          fontWeight: FontWeight.w700),
                                    ),
                                    SizedBox(height: standardSize.width * .015),
                                    Text(
                                      "UX design refers to the term “user experience design”, while UI stands for “user interface design”. Both elements are crucial to a product and work closely together. But despite their professional relationship, the roles themselves are quite different, referring to very different aspects of the product development process and the design discipline.",
                                      style: TextStyle(
                                        color: Colors.black,
                                        fontSize: standardSize.width * .009,
                                      ),
                                    ),
                                    SizedBox(height: standardSize.width * .035),
                                    Text(
                                      "In relation to websites and apps, UI design considers the look, feel, and interactivity of the product. It’s all about making sure that the user interface of a product is as intuitive as possible, and that means carefully considering each and every visual,",
                                      style: TextStyle(
                                        color: Colors.black,
                                        fontSize: standardSize.width * .009,
                                      ),
                                    ),
                                    SizedBox(height: standardSize.width * .035),
                                    Text(
                                      'Tools',
                                      style: TextStyle(
                                          color: Colors.black,
                                          fontSize: standardSize.width * .015,
                                          fontWeight: FontWeight.w700),
                                    ),
                                    SizedBox(height: standardSize.width * .015),
                                    Text(
                                      "Many UX designers, developers, and entrepreneurs take pride in how hard it was to solve hard challenges. I don’t. I hope to convince you not to either. I’m known for enjoying the process of solving impossible problems, but the way I do it is not obvious. I didn’t invent this method. I learned it first-hand from a master.",
                                      style: TextStyle(
                                        color: Colors.black,
                                        fontSize: standardSize.width * .009,
                                      ),
                                    ),
                                    SizedBox(height: standardSize.width * .035),
                                    Text(
                                      'Feedback',
                                      style: TextStyle(
                                          color: Colors.black,
                                          fontSize: standardSize.width * .015,
                                          fontWeight: FontWeight.w700),
                                    ),
                                    SizedBox(height: standardSize.width * .015),
                                    Text(
                                      "Many UX designers, developers, and entrepreneurs take pride in how hard it was to solve hard challenges. I don’t. I hope to convince you not to either. I’m known for enjoying the process of solving impossible problems, but the way I do it is not obvious. I didn’t invent this method. I learned it first-hand from a master.",
                                      style: TextStyle(
                                        color: Colors.black,
                                        fontSize: standardSize.width * .009,
                                      ),
                                    ),
                                    Padding(
                                      padding: EdgeInsets.only(
                                          top: standardSize.width * .125),
                                      child: Text(
                                        'Unique results are produced\nby our unique process.',
                                        style: TextStyle(
                                            color: Colors.black,
                                            fontSize: standardSize.width * .022,
                                            fontWeight: FontWeight.w700),
                                        textAlign: TextAlign.center,
                                      ),
                                    ),
                                    Padding(
                                      padding: EdgeInsets.only(
                                          left: standardSize.width * 0.1,
                                          top: standardSize.width * 0.025),
                                      child: FilledButton(
                                        onPressed: () {},
                                        style: FilledButton.styleFrom(
                                          backgroundColor:
                                              const Color(0xff6b45b3),
                                          shape: RoundedRectangleBorder(
                                            borderRadius:
                                                BorderRadius.circular(8),
                                          ),
                                          padding: EdgeInsets.symmetric(
                                              horizontal:
                                                  standardSize.width * 0.028,
                                              vertical:
                                                  standardSize.width * 0.016),
                                        ),
                                        child: Text(
                                          "Get in Touch",
                                          textAlign: TextAlign.center,
                                          style: TextStyle(
                                            color: Colors.white,
                                            fontWeight: FontWeight.w400,
                                            fontSize:
                                                standardSize.width * 0.012,
                                          ),
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              Container(
                                margin: EdgeInsets.only(
                                    left: standardSize.width * 0.02),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Padding(
                                      padding: EdgeInsets.only(
                                          bottom: standardSize.width * 0.01),
                                      child: Text(
                                        'Information',
                                        style: TextStyle(
                                            color: Colors.black,
                                            fontSize: standardSize.width * .015,
                                            fontWeight: FontWeight.w700),
                                      ),
                                    ),
                                    Padding(
                                      padding: EdgeInsets.symmetric(
                                          vertical: standardSize.width * .0055),
                                      child: SpanTextWidget(
                                          textAlign: TextAlign.left,
                                          textsList: [
                                            TextSpan(
                                              text: 'CLIENT :  ',
                                              style: TextStyle(
                                                  color: Colors.black,
                                                  fontSize:
                                                      standardSize.width * .007,
                                                  fontWeight: FontWeight.w800),
                                            ),
                                            TextSpan(
                                              text: 'ORIXY THEME',
                                              style: TextStyle(
                                                  color: Colors.black,
                                                  fontSize:
                                                      standardSize.width * .007,
                                                  fontWeight: FontWeight.w700),
                                            ),
                                          ]),
                                    ),
                                    Padding(
                                      padding: EdgeInsets.symmetric(
                                          vertical: standardSize.width * .0055),
                                      child: SpanTextWidget(
                                          textAlign: TextAlign.left,
                                          textsList: [
                                            TextSpan(
                                              text: 'CATEGORY :  ',
                                              style: TextStyle(
                                                  color: Colors.black,
                                                  fontSize:
                                                      standardSize.width * .007,
                                                  fontWeight: FontWeight.w800),
                                            ),
                                            TextSpan(
                                              text: 'UI/UX DESIGN',
                                              style: TextStyle(
                                                  color: Colors.black,
                                                  fontSize:
                                                      standardSize.width * .007,
                                                  fontWeight: FontWeight.w700),
                                            ),
                                          ]),
                                    ),
                                    Padding(
                                      padding: EdgeInsets.symmetric(
                                          vertical: standardSize.width * .0055),
                                      child: SpanTextWidget(
                                          textAlign: TextAlign.left,
                                          textsList: [
                                            TextSpan(
                                              text: 'DURATION :  ',
                                              style: TextStyle(
                                                  color: Colors.black,
                                                  fontSize:
                                                      standardSize.width * .007,
                                                  fontWeight: FontWeight.w800),
                                            ),
                                            TextSpan(
                                              text: '3 MONTHS',
                                              style: TextStyle(
                                                  color: Colors.black,
                                                  fontSize:
                                                      standardSize.width * .007,
                                                  fontWeight: FontWeight.w700),
                                            ),
                                          ]),
                                    ),
                                    Padding(
                                      padding: EdgeInsets.symmetric(
                                          vertical: standardSize.width * .0055),
                                      child: SpanTextWidget(
                                          textAlign: TextAlign.left,
                                          textsList: [
                                            TextSpan(
                                              text: 'CLIENT :  ',
                                              style: TextStyle(
                                                  color: Colors.black,
                                                  fontSize:
                                                      standardSize.width * .007,
                                                  fontWeight: FontWeight.w800),
                                            ),
                                            TextSpan(
                                              text: 'ORIXY THEME',
                                              style: TextStyle(
                                                  color: Colors.black,
                                                  fontSize:
                                                      standardSize.width * .007,
                                                  fontWeight: FontWeight.w700),
                                            ),
                                          ]),
                                    ),
                                    Padding(
                                      padding: EdgeInsets.symmetric(
                                          vertical: standardSize.width * .0055),
                                      child: SpanTextWidget(
                                          textAlign: TextAlign.left,
                                          textsList: [
                                            TextSpan(
                                              text: 'CLIENT :  ',
                                              style: TextStyle(
                                                  color: Colors.black,
                                                  fontSize:
                                                      standardSize.width * .007,
                                                  fontWeight: FontWeight.w800),
                                            ),
                                            TextSpan(
                                              text: 'ORIXY THEME',
                                              style: TextStyle(
                                                  color: Colors.black,
                                                  fontSize:
                                                      standardSize.width * .007,
                                                  fontWeight: FontWeight.w700),
                                            ),
                                          ]),
                                    ),
                                    Padding(
                                      padding: EdgeInsets.only(
                                          top: standardSize.width * 0.29),
                                      child: Image.asset(
                                        'assets/images/project-details/ProjDet3.png',
                                        width: standardSize.width * 0.22,
                                      ),
                                    )
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
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
