import 'package:flutter/material.dart';

import '../../models/footer_model.dart';
import '../../widgets/footer_widget.dart';
import '../../widgets/span_text_widget.dart';

class ProjectDetailsPortraitScreen extends StatelessWidget {
  const ProjectDetailsPortraitScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final standardSize = MediaQuery.of(context).size;

    return Column(
      children: [
        Stack(
          children: [
            Image.asset(
              'assets/images/project-details/ProjDet1.png',
              height: standardSize.width,
              fit: BoxFit.cover,
            ),
            Positioned(
              bottom: 0,
              child: Image.asset('assets/images/project-details/ProjDet4.png',
                  width: standardSize.width),
            ),
            Positioned(
              top: standardSize.width * 0.3,
              left: standardSize.width * 0.03,
              child: Text(
                'Project Details',
                style: TextStyle(
                    color: Colors.white,
                    height: 1,
                    fontSize: standardSize.width * .085,
                    fontWeight: FontWeight.w700),
              ),
            ),
          ],
        ),
        Container(
          padding: EdgeInsets.symmetric(
            vertical: 10,
            horizontal: standardSize.width * 0.03,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Image.asset(
                'assets/images/project-details/ProjDet2.png',
                width: standardSize.width,
                height: standardSize.width * 0.5,
                //fit: BoxFit.fill,
              ),
              Padding(
                padding: const EdgeInsets.only(top: 10),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: const [
                    Text(
                      'Project Description',
                      style:
                          TextStyle(fontSize: 20, fontWeight: FontWeight.w700),
                    ),
                    SizedBox(height: 20),
                    Text(
                      "UX design refers to the term “user experience design”, while UI stands for “user interface design”. Both elements are crucial to a product and work closely together. But despite their professional relationship, the roles themselves are quite different, referring to very different aspects of the product development process and the design discipline.",
                      style: TextStyle(
                        fontSize: 14,
                      ),
                    ),
                    SizedBox(height: 20),
                    Text(
                      "In relation to websites and apps, UI design considers the look, feel, and interactivity of the product. It’s all about making sure that the user interface of a product is as intuitive as possible, and that means carefully considering each and every visual,",
                      style: TextStyle(
                        fontSize: 12,
                      ),
                    ),
                    SizedBox(height: 40),
                    Text(
                      'Tools',
                      style:
                          TextStyle(fontSize: 20, fontWeight: FontWeight.w700),
                    ),
                    SizedBox(height: 20),
                    Text(
                      "Many UX designers, developers, and entrepreneurs take pride in how hard it was to solve hard challenges. I don’t. I hope to convince you not to either. I’m known for enjoying the process of solving impossible problems, but the way I do it is not obvious. I didn’t invent this method. I learned it first-hand from a master.",
                      style: TextStyle(
                        fontSize: 12,
                      ),
                    ),
                    SizedBox(height: 40),
                    Text(
                      'Feedback',
                      style:
                          TextStyle(fontSize: 20, fontWeight: FontWeight.w700),
                    ),
                    SizedBox(height: 20),
                    Text(
                      "Many UX designers, developers, and entrepreneurs take pride in how hard it was to solve hard challenges. I don’t. I hope to convince you not to either. I’m known for enjoying the process of solving impossible problems, but the way I do it is not obvious. I didn’t invent this method. I learned it first-hand from a master.",
                      style: TextStyle(
                        fontSize: 12,
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 40.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: const [
                    Padding(
                      padding: EdgeInsets.only(bottom: 20),
                      child: Text(
                        'Information',
                        style:
                            TextStyle(fontSize: 20, fontWeight: FontWeight.w700),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.symmetric(vertical: 5),
                      child: SpanTextWidget(textAlign: TextAlign.left, textsList: [
                        TextSpan(
                          text: 'CLIENT :  ',
                          style:
                              TextStyle(fontSize: 10,                            color: Colors.black,
                                  fontWeight: FontWeight.w800),
                        ),
                        TextSpan(
                          text: 'ORIXY THEME',
                          style:
                              TextStyle(fontSize: 10,                            color: Colors.black,
                                  fontWeight: FontWeight.w700),
                        ),
                      ]),
                    ),
                    Padding(
                      padding: EdgeInsets.symmetric(vertical: 5),
                      child:
                          SpanTextWidget(textAlign: TextAlign.left, textsList: [
                        TextSpan(
                          text: 'CATEGORY :  ',
                          style: TextStyle(
                              color: Colors.black,
                              fontSize: 10,
                              fontWeight: FontWeight.w800),
                        ),
                        TextSpan(
                          text: 'UI/UX DESIGN',
                          style: TextStyle(
                              color: Colors.black,
                              fontSize: 10,
                              fontWeight: FontWeight.w700),
                        ),
                      ]),
                    ),
                    Padding(
                      padding: EdgeInsets.symmetric(vertical: 5),
                      child:
                          SpanTextWidget(textAlign: TextAlign.left, textsList: [
                        TextSpan(
                          text: 'DURATION :  ',
                          style: TextStyle(
                              color: Colors.black,
                              fontSize: 10,
                              fontWeight: FontWeight.w800),
                        ),
                        TextSpan(
                          text: '3 MONTHS',
                          style: TextStyle(
                              color: Colors.black,
                              fontSize: 10,
                              fontWeight: FontWeight.w700),
                        ),
                      ]),
                    ),
                    Padding(
                      padding: EdgeInsets.symmetric(vertical: 5),
                      child:
                          SpanTextWidget(textAlign: TextAlign.left, textsList: [
                        TextSpan(
                          text: 'CLIENT :  ',
                          style: TextStyle(
                              color: Colors.black,
                              fontSize: 10,
                              fontWeight: FontWeight.w800),
                        ),
                        TextSpan(
                          text: 'ORIXY THEME',
                          style: TextStyle(
                              color: Colors.black,
                              fontSize: 10,
                              fontWeight: FontWeight.w700),
                        ),
                      ]),
                    ),
                    Padding(
                      padding: EdgeInsets.symmetric(vertical: 5),
                      child:
                          SpanTextWidget(textAlign: TextAlign.left, textsList: [
                        TextSpan(
                          text: 'CLIENT :  ',
                          style: TextStyle(
                              color: Colors.black,
                              fontSize: 10,
                              fontWeight: FontWeight.w800),
                        ),
                        TextSpan(
                          text: 'ORIXY THEME',
                          style: TextStyle(
                              fontSize: 10,                            color: Colors.black,
                              fontWeight: FontWeight.w700),
                        ),
                      ]),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: standardSize.width * .05),
                child: const Text(
                  'Unique results are produced by our unique process.',
                  style: TextStyle(fontSize: 30, fontWeight: FontWeight.w700),
                  textAlign: TextAlign.center,
                ),
              ),
              Center(
                child: Padding(
                  padding: const EdgeInsets.symmetric(vertical: 30),
                  child: FilledButton(
                    onPressed: () {
                      print(standardSize.width);
                    },
                    style: FilledButton.styleFrom(
                      backgroundColor: const Color(0xff6b45b3),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(8),
                      ),
                      padding: const EdgeInsets.symmetric(
                          horizontal: 30, vertical: 20),
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
              ),
              Center(
                child: Image.asset(
                  'assets/images/project-details/ProjDet3.png',
                  width: standardSize.width * 0.5,
                ),
              )
            ],
          ),
        ),
        FooterWidget(footerModel: footerModelData),
      ],
    );
  }
}
