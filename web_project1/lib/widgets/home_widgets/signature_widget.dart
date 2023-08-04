import 'package:flutter/material.dart';

import '../../models/footer_model.dart';
import 'auto_scroll_widgets_widget.dart';

class SignatureWidget extends StatelessWidget {
  const SignatureWidget({super.key});

  @override
  Widget build(BuildContext context) {
    final standardSize = MediaQuery.of(context).size;
    return MediaQuery.of(context).orientation == Orientation.landscape
        ? Container(
            width: double.infinity,
            padding: const EdgeInsets.symmetric(vertical: 50),
            color: const Color.fromRGBO(25, 26, 35, 0.37),
            child: Column(
              children: [
                const Padding(
                  padding:
                      EdgeInsets.symmetric(vertical: 20, horizontal: 200),
                  child: Text(
                    "I must explain to you how all this mistaken idea of denouncing this pleasures and praising pain was born and I will give you a complete account of the system",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: Color(0xfff5ffd0),
                      fontSize: 20,
                    ),
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: const [
                    Padding(
                      padding: EdgeInsets.only(top: 50, right: 100),
                      child: Text(
                        "Bassant Ashraf",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 22,
                          fontWeight: FontWeight.w800,
                        ),
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 20),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text(
                      "CEO, Bassant.inc",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 16,
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 8.0),
                      child: Image.asset('assets/images/home/pseudoR.png'),
                    ),
                  ],
                ),
                const SizedBox(height: 50),
                AutoScrollWidgetsWidget(
                  items: [
                    Image.asset(
                        footerModel['description']['socialSrc']['facebook']),
                    Image.asset(
                        footerModel['description']['socialSrc']['instagram']),
                    Image.asset(
                        footerModel['description']['socialSrc']['linkedIn']),
                    Image.asset(
                        footerModel['description']['socialSrc']['twitter']),
                    Image.asset(
                        footerModel['description']['socialSrc']['facebook']),
                    Image.asset(
                        footerModel['description']['socialSrc']['instagram']),
                    Image.asset(
                        footerModel['description']['socialSrc']['linkedIn']),
                    Image.asset(
                        footerModel['description']['socialSrc']['twitter']),
                    Image.asset(
                        footerModel['description']['socialSrc']['facebook']),
                    Image.asset(
                        footerModel['description']['socialSrc']['instagram']),
                    Image.asset(
                        footerModel['description']['socialSrc']['linkedIn']),
                    Image.asset(
                        footerModel['description']['socialSrc']['twitter']),
                    Image.asset(
                        footerModel['description']['socialSrc']['facebook']),
                    Image.asset(
                        footerModel['description']['socialSrc']['instagram']),
                    Image.asset(
                        footerModel['description']['socialSrc']['linkedIn']),
                    Image.asset(
                        footerModel['description']['socialSrc']['twitter']),
                    Image.asset(
                        footerModel['description']['socialSrc']['facebook']),
                    Image.asset(
                        footerModel['description']['socialSrc']['instagram']),
                    Image.asset(
                        footerModel['description']['socialSrc']['linkedIn']),
                    Image.asset(
                        footerModel['description']['socialSrc']['twitter']),
                  ],
                )
              ],
            ),
          )
        : Container(
            width: double.infinity,
            margin: const EdgeInsets.symmetric(vertical: 50),
            padding: const EdgeInsets.symmetric(vertical: 50),
            color: const Color.fromRGBO(25, 26, 35, 0.37),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                Padding(
                  padding:
                      const EdgeInsets.symmetric(vertical: 20, horizontal: 20),
                  child: Text(
                    "I must explain to you how all this mistaken idea of denouncing this pleasures and praising pain was born and I will give you a complete account of the system",
                    textAlign: TextAlign.left,
                    style: TextStyle(
                      color: const Color(0xfff5ffd0),
                      fontSize: standardSize.width * 0.05,
                    ),
                  ),
                ),
                const SizedBox(height: 20),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text(
                      "CEO, Bassant.inc",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 16,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(vertical: 5.0),
                      child: Image.asset('assets/images/home/pseudoR.png'),
                    ),
                    const Padding(
                      padding: EdgeInsets.only(right: 50, top: 5),
                      child: Text(
                        "Bassant Ashraf",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 15,
                          fontWeight: FontWeight.w100,
                        ),
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 50),
                AutoScrollWidgetsWidget(
                  items: [
                    Image.asset(
                        footerModel['description']['socialSrc']['facebook']),
                    Image.asset(
                        footerModel['description']['socialSrc']['instagram']),
                    Image.asset(
                        footerModel['description']['socialSrc']['linkedIn']),
                    Image.asset(
                        footerModel['description']['socialSrc']['twitter']),
                    Image.asset(
                        footerModel['description']['socialSrc']['facebook']),
                    Image.asset(
                        footerModel['description']['socialSrc']['instagram']),
                    Image.asset(
                        footerModel['description']['socialSrc']['linkedIn']),
                    Image.asset(
                        footerModel['description']['socialSrc']['twitter']),
                    Image.asset(
                        footerModel['description']['socialSrc']['facebook']),
                    Image.asset(
                        footerModel['description']['socialSrc']['instagram']),
                    Image.asset(
                        footerModel['description']['socialSrc']['linkedIn']),
                    Image.asset(
                        footerModel['description']['socialSrc']['twitter']),
                    Image.asset(
                        footerModel['description']['socialSrc']['facebook']),
                    Image.asset(
                        footerModel['description']['socialSrc']['instagram']),
                    Image.asset(
                        footerModel['description']['socialSrc']['linkedIn']),
                    Image.asset(
                        footerModel['description']['socialSrc']['twitter']),
                    Image.asset(
                        footerModel['description']['socialSrc']['facebook']),
                    Image.asset(
                        footerModel['description']['socialSrc']['instagram']),
                    Image.asset(
                        footerModel['description']['socialSrc']['linkedIn']),
                    Image.asset(
                        footerModel['description']['socialSrc']['twitter']),
                  ],
                )
              ],
            ),
          );
  }
}
