import 'package:flutter/material.dart';

import '../../constants/font_sizes.dart';
import '../span_text_widget.dart';

class FourthContainer extends StatelessWidget {
  const FourthContainer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final standardSize = MediaQuery.of(context).size;

    return MediaQuery.of(context).orientation == Orientation.landscape
        ? Container(
            color: const Color(0xFF405CFF),
            margin: EdgeInsets.only(
                left: standardSize.width * .1,
                bottom: standardSize.width * .05),
            padding: EdgeInsets.only(
                left: standardSize.width * .05,
                right: standardSize.width * .025,
                top: standardSize.width * .05,
                bottom: standardSize.width * .025),
            child: Row(
              children: [
                Container(
                  padding: const EdgeInsets.only(left: 60.0),
                  width: standardSize.width * .5,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const SpanTextWidget(
                        textAlign: TextAlign.left,
                        textsList: [
                          TextSpan(
                            text: 'Have a project\n',
                            style: TextStyle(
                                color: Colors.white,
                                height: 1,
                                fontSize: 60,
                                fontWeight: FontWeight.w900),
                          ),
                          TextSpan(
                            text: 'in mind?',
                            style: TextStyle(
                              color: Colors.white,
                              height: 1,
                              fontSize: 50,
                            ),
                          ),
                        ],
                      ),
                      Container(
                        width: standardSize.width * 0.3,
                        padding: EdgeInsets.symmetric(
                            vertical: standardSize.width * 0.05),
                        child: const SpanTextWidget(
                            textAlign: TextAlign.left,
                            textsList: [
                              TextSpan(
                                text:
                                    'Unique results are produced by our unique process.',
                                style: TextStyle(
                                  color: Colors.white,
                                  height: 1,
                                  fontSize: 30,
                                  fontWeight: FontWeight.w100,
                                ),
                              )
                            ]),
                      ),
                      FilledButton(
                        style: FilledButton.styleFrom(
                          backgroundColor: const Color(0xffdffb6d),
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(7)),
                        ),
                        onPressed: () {},
                        child: const Padding(
                          padding: EdgeInsets.symmetric(
                              horizontal: 10, vertical: 10),
                          child: Text(
                            "Get in Touch",
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 20,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                Image.asset(
                  'assets/images/services/frame3.png',
                  width: standardSize.width * .3,
                ),
              ],
            ),
          )
        : Container(
            color: const Color(0xFF405CFF),
            margin: EdgeInsets.only(
                left: standardSize.width * .1,
                bottom: standardSize.width * .05),
            padding: EdgeInsets.only(
                left: standardSize.width * .1,
                right: standardSize.width * .05,
                top: standardSize.width * .1,
                bottom: standardSize.width * .08),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const SpanTextWidget(
                  textAlign: TextAlign.left,
                  textsList: [
                    TextSpan(
                      text: 'Have a project\n',
                      style: TextStyle(
                          color: Colors.white,
                          height: 1,
                          fontSize: 60,
                          fontWeight: FontWeight.w900),
                    ),
                    TextSpan(
                      text: 'in mind?',
                      style: TextStyle(
                        color: Colors.white,
                        height: 1,
                        fontSize: 50,
                      ),
                    ),
                  ],
                ),
                Padding(
                  padding: EdgeInsets.symmetric(
                      vertical: standardSize.width * 0.1),
                  child: const SpanTextWidget(
                      textAlign: TextAlign.left,
                      textsList: [
                        TextSpan(
                          text:
                              'Unique results are produced by our unique process.',
                          style: TextStyle(
                            color: Colors.white,
                            height: 1,
                            fontSize: 30,
                            fontWeight: FontWeight.w100,
                          ),
                        )
                      ]),
                ),
                Center(
                  child: FilledButton(
                    style: FilledButton.styleFrom(
                      backgroundColor: const Color(0xffdffb6d),
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(7)),
                    ),
                    onPressed: () {},
                    child: const Padding(
                      padding: EdgeInsets.symmetric(
                          horizontal: 10, vertical: 10),
                      child: Text(
                        "Get in Touch",
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 20,
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          );
  }
}
