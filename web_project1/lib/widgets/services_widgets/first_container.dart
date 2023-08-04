import 'package:flutter/material.dart';

import '../../constants/font_sizes.dart';
import '../span_text_widget.dart';

class FirstContainer extends StatelessWidget {
  const FirstContainer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final standardSize = MediaQuery.of(context).size;

    return MediaQuery.of(context).orientation == Orientation.landscape
        ? Container(
            margin: EdgeInsets.symmetric(horizontal: standardSize.width * .2),
            child: const Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: EdgeInsets.only(left: 8, top: 8),
                  child: SpanTextWidget(
                    textAlign: TextAlign.left,
                    textsList: [
                      TextSpan(
                        text: "OUR MARKETING\nSERVICES\n",
                        style: TextStyle(
                          color: Colors.white,
                          height: 1.1,
                          fontSize: 35,
                          fontWeight: FontWeight.w800,
                        ),
                      ),
                      TextSpan(
                        text: "HOME ",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 10,
                          fontWeight: FontWeight.w800,
                          letterSpacing: 1,
                        ),
                      ),
                      TextSpan(
                        text: "> ",
                        style: TextStyle(
                          color: Color(0xfffecc05),
                          fontSize: 15,
                          fontWeight: FontWeight.w800,
                        ),
                      ),
                      TextSpan(
                        text: "SERVICES",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 10,
                          fontWeight: FontWeight.w800,
                          letterSpacing: 1,
                        ),
                      )
                    ],
                  ),
                ),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 50.0, vertical: 50),
                  child: SpanTextWidget(textAlign: TextAlign.left, textsList: [
                    TextSpan(
                      text:
                          "Consumers today rely heavily on digital means to research products. We research a brand of bldend engaging with it, according to the meanwhile, 51% of consumers say they use Google to research products before buying.",
                      style: TextStyle(
                          color: Colors.white,
                          height: 1.1,
                          fontSize: 25,
                          fontWeight: FontWeight.w600),
                    )
                  ]),
                ),
                Row(
                  children: [
                    Spacer(),
                    SpanTextWidget(
                      textAlign: TextAlign.left,
                      textsList: [
                        TextSpan(
                          text: "25K+\n",
                          style: TextStyle(
                            color: Colors.yellow,
                            fontSize: 25,
                            fontWeight: FontWeight.w800,
                          ),
                        ),
                        TextSpan(
                          text: 'PROJECTS COMPLETED\nSUCCESSFULLY',
                          style: TextStyle(
                            color: Colors.white,
                            height: 1,
                            fontSize: 18,
                            fontWeight: FontWeight.w800,
                          ),
                        )
                      ],
                    ),
                  ],
                )
              ],
            ),
          )
        : Container(
            margin: EdgeInsets.symmetric(horizontal: standardSize.width * .03),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SpanTextWidget(
                  textAlign: TextAlign.left,
                  textsList: [
                    TextSpan(
                      text: "OUR MARKETING\nSERVICES\n",
                      style: TextStyle(
                        color: Colors.white,
                        height: 1.1,
                        fontSize: standardSize.width * .065,
                        fontWeight: FontWeight.w800,
                      ),
                    ),
                    TextSpan(
                      text: "HOME ",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: standardSize.width * .015,
                        fontWeight: FontWeight.w800,
                        letterSpacing: 1,
                      ),
                    ),
                    TextSpan(
                      text: "> ",
                      style: TextStyle(
                        color: const Color(0xfffecc05),
                        fontSize: FontSizes.xSmall,
                        fontWeight: FontWeight.w800,
                      ),
                    ),
                    TextSpan(
                      text: "SERVICES",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: standardSize.width * .015,
                        fontWeight: FontWeight.w800,
                        letterSpacing: 1,
                      ),
                    )
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.symmetric( vertical: 50),
                  child: SpanTextWidget(textAlign: TextAlign.left, textsList: [
                    TextSpan(
                      text:
                          "Consumers today rely heavily on digital means to research products. We research a brand of bldend engaging with it, according to the meanwhile, 51% of consumers say they use Google to research products before buying.",
                      style: TextStyle(
                          color: Colors.white,
                          height: 1.1,
                          fontSize: standardSize.width * .035,
                          fontWeight: FontWeight.w600),
                    )
                  ]),
                ),
                const Row(
                  children: [
                    Spacer(),
                    SpanTextWidget(
                      textAlign: TextAlign.left,
                      textsList: [
                        TextSpan(
                          text: "25K+\n",
                          style: TextStyle(
                            color: Colors.yellow,
                            fontSize: 25,
                            fontWeight: FontWeight.w800,
                          ),
                        ),
                        TextSpan(
                          text: 'PROJECTS COMPLETED\nSUCCESSFULLY',
                          style: TextStyle(
                            color: Colors.white,
                            height: 1,
                            fontSize: 18,
                            fontWeight: FontWeight.w800,
                          ),
                        )
                      ],
                    ),
                  ],
                )
              ],
            ),
          );
  }
}
