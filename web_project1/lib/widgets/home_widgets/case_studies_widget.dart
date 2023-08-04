import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

import '/widgets/span_text_widget.dart';
import '/constants/font_sizes.dart';

class CaseStudiesWidget extends StatelessWidget {
  const CaseStudiesWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final standardSize = MediaQuery.of(context).size;
    return MediaQuery.of(context).orientation == Orientation.landscape
        ? Container(
            height: 1000,
            padding: EdgeInsets.symmetric(
                horizontal: standardSize.width * .17, vertical: 20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                SizedBox(
                  width: standardSize.width * .3,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Padding(
                        padding: EdgeInsets.symmetric(vertical: 8.0),
                        child: Text(
                          'CASE STUDIES',
                          style: TextStyle(
                              fontSize: 15,
                              color: Color(0xffb9b9b9),
                              letterSpacing: 2),
                        ),
                      ),
                      const SpanTextWidget(
                        textAlign: TextAlign.left,
                        textsList: [
                          TextSpan(
                            text:
                                'We Are A Digital Design Agency With Best Value\n',
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 35,
                                fontWeight: FontWeight.w900),
                          ),
                          TextSpan(
                            text: 'Check Our Work',
                            style: TextStyle(
                                color: Color(0xffdffb6d),
                                decoration: TextDecoration.underline,
                                fontSize: 35,
                                fontWeight: FontWeight.w100),
                          ),
                        ],
                      ),
                      const Spacer(),
                      const SpanTextWidget(
                        textAlign: TextAlign.left,
                        textsList: [
                          TextSpan(
                            text: '88',
                            style: TextStyle(
                                color: Color(0xffdffb6d),
                                fontSize: 110,
                                fontWeight: FontWeight.w700),
                          ),
                          TextSpan(
                            text: '+',
                            style: TextStyle(
                              color: Color(0xffdffb6d),
                            ),
                          )
                        ],
                      ),
                      const Padding(
                        padding: EdgeInsets.symmetric(vertical: 10.0),
                        child: Text(
                          'Projects complete by us',
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 18,
                              fontWeight: FontWeight.w700),
                        ),
                      ),
                      const Text(
                        'The latest measurements indicate the quick loading of pages in accordance with the standards for positioning of the best mark.',
                        style: TextStyle(
                          color: Color(0xffc2c2c2),
                          fontSize: 16,
                        ),
                      ),
                      Padding(
                          padding: const EdgeInsets.only(top: 40.0, bottom: 10),
                          child: FilledButton(
                            onPressed: () {},
                            style: FilledButton.styleFrom(
                              backgroundColor: const Color(0xff261e4b),
                            ),
                            child: Padding(
                              padding: const EdgeInsets.symmetric(
                                horizontal: 10,
                                vertical: 15,
                              ),
                              child: Text(
                                "VIEW ALL PROJECTS",
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: FontSizes.xxSmall,
                                  fontWeight: FontWeight.w600,
                                  letterSpacing: 1.96,
                                ),
                              ),
                            ),
                          ))
                    ],
                  ),
                ),
                SizedBox(
                  width: standardSize.width * .34,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      SizedBox(
                        width: 500,
                        height: 310,
                        child: Card(
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(15)),
                          child: Image.asset('assets/images/01.png',
                              height: standardSize.width * .25),
                        ),
                      ),
                      SizedBox(
                        width: 500,
                        height: 310,
                        child: Card(
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(15)),
                          child: Image.asset('assets/images/01.png',
                              height: standardSize.width * .25),
                        ),
                      ),
                      SizedBox(
                        width: 500,
                        height: 310,
                        child: Card(
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(15)),
                          child: Image.asset('assets/images/01.png',
                              height: standardSize.width * .25),
                        ),
                      ),
                    ],
                  ),
                )
              ],
            ),
          )
        : Column(
          children: [
            Padding(
              padding: EdgeInsets.only(left: standardSize.width * .03),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(top: 50, bottom: 30.0),
                    child: Text(
                      'CASE STUDIES',
                      style: TextStyle(
                          fontSize: standardSize.width * .05,
                          color: const Color(0xffb9b9b9),
                          letterSpacing: 2),
                    ),
                  ),
                  Text(
                    'We Are A Digital Design Agency With Best Value',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: standardSize.width * .09,
                      fontWeight: FontWeight.w900,

                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 30.0),
                    child: Text(
                      'Check Our Work',
                      style: TextStyle(
                          color: const Color(0xffdffb6d),
                          decoration: TextDecoration.underline,
                          fontSize: standardSize.width * .07,
                          fontWeight: FontWeight.w100),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 50.0),
                    child: SpanTextWidget(
                      textAlign: TextAlign.left,
                      textsList: [
                        TextSpan(
                          text: '88',
                          style: TextStyle(
                              color: const Color(0xffdffb6d),
                              fontSize: standardSize.width * .2,
                              fontWeight: FontWeight.w700),
                        ),
                        const TextSpan(
                          text: '+',
                          style: TextStyle(
                            color: Color(0xffdffb6d),
                          ),
                        )
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(bottom: 70.0),
                    child: Text(
                      'Projects complete by us',
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: standardSize.width * .06,
                          fontWeight: FontWeight.w700),
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: standardSize.width * .025),
              child: Column(
                children: [
                  SizedBox(
                    width: standardSize.width * .95,
                    height: standardSize.width * .95,
                    child: Card(
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(15)),
                      child: Image.asset('assets/images/01.png'),
                    ),
                  ),
                  SizedBox(
                    width: standardSize.width * .95,
                    height: standardSize.width * .95,
                    child: Card(
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(15)),
                      child: Image.asset('assets/images/01.png'),
                    ),
                  ),
                  SizedBox(
                    width: standardSize.width * .95,
                    height: standardSize.width * .95,
                    child: Card(
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(15)),
                      child: Image.asset('assets/images/01.png'),
                    ),
                  ),
                ],
              ),
            ),
            Padding(
                padding: const EdgeInsets.symmetric(vertical: 45.0),
                child: FilledButton(
                  onPressed: () {},
                  style: FilledButton.styleFrom(
                    backgroundColor: const Color(0xff261e4b),
                  ),
                  child: const Padding(
                    padding: EdgeInsets.symmetric(
                      horizontal: 10,
                      vertical: 25,
                    ),
                    child: Text(
                      "VIEW ALL PROJECTS",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 15,
                        fontWeight: FontWeight.w600,
                        //letterSpacing: 1.96,
                      ),
                    ),
                  ),
                ))
          ],
        );
  }
}
