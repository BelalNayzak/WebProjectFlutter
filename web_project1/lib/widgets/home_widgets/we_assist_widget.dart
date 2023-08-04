import 'package:flutter/material.dart';
import 'package:web_project1/screens/portfolio_screen.dart';

import '../span_text_widget.dart';

class WeAssistWidget extends StatelessWidget {
  const WeAssistWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final standardSize = MediaQuery.of(context).size;

    return MediaQuery.of(context).orientation == Orientation.landscape
        ? Container(
            margin: EdgeInsets.symmetric(horizontal: standardSize.width * .158),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  width: standardSize.width * .33,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(top: 30.0, bottom: 20),
                        child: SpanTextWidget(
                          textAlign: TextAlign.left,
                          textsList: [
                            TextSpan(
                              text: 'We assist businesses\nin ',
                              style: TextStyle(
                                color: const Color(0xffdffb6d),
                                fontSize: standardSize.width * .03,
                                fontWeight: FontWeight.w700,
                              ),
                            ),
                            TextSpan(
                              text: 'building irresistible\nbrands.',
                              style: TextStyle(
                                  color: const Color(0xffdffb6d),
                                  fontSize: standardSize.width * .03,
                                  fontWeight: FontWeight.w100),
                            ),
                          ],
                        ),
                      ),
                      FilledButton(
                        onPressed: () {
                          Navigator.of(context)
                              .pushReplacementNamed(PortfolioScreen.routeName);
                        },
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
                              fontSize: standardSize.width * .008,
                              fontWeight: FontWeight.w600,
                              letterSpacing: 1.96,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                  width: standardSize.width * .31,
                  padding:
                      EdgeInsets.only(left: standardSize.width * .035, top: 15),
                  child: Image.asset(
                    'assets/images/home/01.png'),
                ),
              ],
            ),
          )
        : Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Image.asset(
                    'assets/images/home/02.png',
                  ),
                ],
              ),
              Padding(
                padding: EdgeInsets.only(
                    left: standardSize.width * .025, bottom: 30),
                child: SpanTextWidget(
                  textAlign: TextAlign.left,
                  textsList: [
                    TextSpan(
                      text: 'We assist businesses\nin ',
                      style: TextStyle(
                          color: Colors.white,
                          // color: const Color(0xffdffb6d),
                          fontSize: standardSize.width * .08,
                          fontWeight: FontWeight.w700,
                          height: 1.5),
                    ),
                    TextSpan(
                      text: 'building irresistible\nbrands.',
                      style: TextStyle(
                          color: const Color(0xffdffb6d),
                          fontSize: standardSize.width * .08,
                          fontWeight: FontWeight.w100,
                          height: 1.5),
                    ),
                  ],
                ),
              ),
              Center(
                child: FilledButton(
                  onPressed: () {
                    Navigator.of(context).pushNamed(PortfolioScreen.routeName);
                  },
                  style: FilledButton.styleFrom(
                      backgroundColor: const Color(0xff261e4b),
                      ),
                  child: const Padding(
                    padding: EdgeInsets.symmetric(
                      vertical: 25,
                    ),
                    child: Text(
                      "VIEW ALL PROJECTS",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 13,
                        fontWeight: FontWeight.w600,
                        letterSpacing: 1.96,
                      ),
                    ),
                  ),
                ),
              ),
            ],
          );
  }
}
