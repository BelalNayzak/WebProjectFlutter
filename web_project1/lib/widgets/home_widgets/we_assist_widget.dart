import 'package:flutter/material.dart';

import '../../screens/projects_screen.dart';
import '../span_text_widget.dart';

class WeAssistWidget extends StatelessWidget {
  const WeAssistWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final standardSize = MediaQuery.of(context).size;

    return standardSize.width > 800
        ? Container(
            margin: EdgeInsets.symmetric(horizontal: standardSize.width * .15),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const SizedBox(height: 30),
                    const SpanTextWidget(
                      textAlign: TextAlign.left,
                      textsList: [
                        TextSpan(
                          text: 'We assist businesses\nin ',
                          style: TextStyle(
                            color: Colors.black,
                            //color: Color(0xffdffb6d),
                            fontSize: 47,
                            fontWeight: FontWeight.w700,
                          ),
                        ),
                        TextSpan(
                          text: 'building irresistible\nbrands.',
                          style: TextStyle(
                              color: Colors.black,
                              //color: Color(0xffdffb6d),
                              fontSize: 47,
                              fontWeight: FontWeight.w100),
                        ),
                      ],
                    ),
                    const SizedBox(height: 20),
                    FilledButton(
                      onPressed: () {
                        Navigator.of(context)
                            .pushNamed(ProjectsScreen.routeName);
                      },
                      style: FilledButton.styleFrom(
                        backgroundColor: const Color(0xff261e4b),
                      ),
                      child: const Padding(
                        padding: EdgeInsets.symmetric(
                          horizontal: 10,
                          vertical: 15,
                        ),
                        child: Text(
                          "VIEW ALL PROJECTS",
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 10,
                            fontWeight: FontWeight.w600,
                            letterSpacing: 1.96,
                          ),
                        ),
                      ),
                    )
                  ],
                ),
                Expanded(
                  child: Image.asset(
                    'assets/images/home/01.png',
                  ),
                ),
              ],
            ),
          )
        : Column(
            //crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(height: 30),
              Padding(
                padding: const EdgeInsets.only(left: 20.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: const [
                    SpanTextWidget(
                      textAlign: TextAlign.left,
                      textsList: [
                        TextSpan(
                          text: 'We assist businesses\nin ',
                          style: TextStyle(
                            color: Color(0xffdffb6d),
                            fontSize: 47,
                            fontWeight: FontWeight.w700,
                          ),
                        ),
                        TextSpan(
                          text: 'building irresistible\nbrands.',
                          style: TextStyle(
                            color: Color(0xffdffb6d),
                            fontSize: 47,
                            fontWeight: FontWeight.w100,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 40),
              FilledButton(
                onPressed: () {
                  Navigator.of(context).pushNamed(ProjectsScreen.routeName);
                },
                style: FilledButton.styleFrom(
                  backgroundColor: const Color(0xff261e4b),
                ),
                child: const Padding(
                  padding: EdgeInsets.symmetric(
                    horizontal: 10,
                    vertical: 15,
                  ),
                  child: Text(
                    "VIEW ALL PROJECTS",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 10,
                      fontWeight: FontWeight.w600,
                      letterSpacing: 1.96,
                    ),
                  ),
                ),
              )
            ],
          );
  }
}
