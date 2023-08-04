import 'package:flutter/material.dart';

import '../../constants/font_sizes.dart';
import '../../screens/contact_us_screen.dart';
import '../span_text_widget.dart';

class GetInTouchWidget extends StatelessWidget {
  const GetInTouchWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final standardSize = MediaQuery.of(context).size;

    return MediaQuery.of(context).orientation == Orientation.landscape
        ? Container(
            width:double.infinity,
            margin:  EdgeInsets.symmetric(vertical: 100, horizontal: standardSize.width * .15),
            padding: const EdgeInsets.only(bottom: 100),
            color: const Color(0xff2a3867),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Column(
                  children: [
                    Container(
                      width: standardSize.width * .6,
                      margin: const EdgeInsets.symmetric(vertical: 45),
                      child: const SpanTextWidget(
                        textAlign: TextAlign.center,
                        textsList: [
                          TextSpan(
                              text: 'Excellent ',
                              style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 50)),
                          TextSpan(
                              text: 'design ',
                              style: TextStyle(
                                  color: Colors.purple,
                                  fontSize: 50)),
                          TextSpan(
                              text: 'fits\n',
                              style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 50)),
                          TextSpan(
                              text: 'perfectly.',
                              style: TextStyle(
                                  color: Colors.purple,
                                  fontSize: 50)),
                        ],
                      ),
                    ),
                    const Padding(
                      padding: EdgeInsets.symmetric(vertical: 25.0),
                      child: SpanTextWidget(
                          textAlign: TextAlign.center,
                          textsList: [
                            TextSpan(
                              text:
                                  'Unique results are produced \nby our unique process.',
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 20,
                              ),
                            )
                          ]),
                    ),
                    FilledButton(
                      onPressed: () {
                        Navigator.of(context)
                            .pushNamed(ContactUsScreen.routeName);
                      },
                      style: FilledButton.styleFrom(
                          backgroundColor: const Color(0xff6b45b3),
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(4))),
                      child: const Padding(
                        padding: EdgeInsets.symmetric(vertical: 10.0),
                        child: Text(
                          "Get in Touch",
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 20,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                Image.asset(
                  'assets/images/circles.png',
                  width: standardSize.width * .1,
                ),

              ],
            ),
          )
        : Container(
            width: double.infinity,
            margin: const EdgeInsets.symmetric(vertical: 50),
            color: const Color(0xff2a3867),
            child: Column(
              children: [
                Container(
                  margin: const EdgeInsets.symmetric(vertical: 45),
                  child: SpanTextWidget(
                    textAlign: TextAlign.center,
                    textsList: [
                      TextSpan(
                          text: 'Excellent ',
                          style: TextStyle(
                              color: Colors.white, fontSize: FontSizes.xLarge)),
                      TextSpan(
                          text: 'design ',
                          style: TextStyle(
                              color: Colors.purple,
                              fontSize: FontSizes.xLarge)),
                      TextSpan(
                          text: 'fits\n',
                          style: TextStyle(
                              color: Colors.white, fontSize: FontSizes.xLarge)),
                      TextSpan(
                          text: 'perfectly.',
                          style: TextStyle(
                              color: Colors.purple,
                              fontSize: FontSizes.xLarge)),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(bottom: 35),
                  child:
                      SpanTextWidget(textAlign: TextAlign.center, textsList: [
                    TextSpan(
                      text:
                          'Unique results are produced\nby our unique process.',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: FontSizes.xSmall,
                      ),
                    )
                  ]),
                ),
                FilledButton(
                  onPressed: () {
                    Navigator.of(context).pushNamed(ContactUsScreen.routeName);
                  },
                  style: FilledButton.styleFrom(
                    backgroundColor: const Color(0xff6b45b3),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                  ),
                  child: const Padding(
                    padding: EdgeInsets.symmetric(vertical: 8.0, horizontal: 8),
                    child: Text(
                      "Get in Touch",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 15,
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 25.0),
                  child: Image.asset('assets/images/circles.png'),
                )
              ],
            ),
          );
  }
}
