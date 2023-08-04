import 'package:flutter/material.dart';

import '../span_text_widget.dart';

class FirstContainer extends StatelessWidget {
  const FirstContainer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final orientation = MediaQuery.of(context).orientation;
    final standardSize = MediaQuery.of(context).size;
    return orientation == Orientation.landscape
        ? Container(
            alignment: Alignment.centerLeft,
            margin:
                EdgeInsets.symmetric(horizontal: standardSize.width * 0.155),
            child: const SpanTextWidget(
              textAlign: TextAlign.left,
              textsList: [
                TextSpan(
                  text: "Projects\n",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 45,
                    fontWeight: FontWeight.w700,
                  ),
                ),
                TextSpan(
                  text: " HOME ",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 10,
                    fontWeight: FontWeight.w100,
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
                  text: "PROJECT DARK",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 10,
                    fontWeight: FontWeight.w100,
                    letterSpacing: 1,
                  ),
                )
              ],
            ),
          )
        : Container(
            alignment: Alignment.centerLeft,
            margin: EdgeInsets.symmetric(horizontal: standardSize.width * 0.03),
            child: SpanTextWidget(
              textAlign: TextAlign.left,
              textsList: [
                TextSpan(
                  text: "Projects\n",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: standardSize.width * .07,
                    fontWeight: FontWeight.w700,
                  ),
                ),
                TextSpan(
                  text: " HOME ",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: standardSize.width * .025,
                    fontWeight: FontWeight.w100,
                    letterSpacing: 2,
                  ),
                ),
                TextSpan(
                  text: "> ",
                  style: TextStyle(
                    color: const Color(0xfffecc05),
                    fontSize: standardSize.width * .03,
                    fontWeight: FontWeight.w800,
                  ),
                ),
                TextSpan(
                  text: "PROJECT DARK",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: standardSize.width * .025,
                    fontWeight: FontWeight.w100,
                    letterSpacing: 2,
                  ),
                )
              ],
            ),
          );
  }
}
