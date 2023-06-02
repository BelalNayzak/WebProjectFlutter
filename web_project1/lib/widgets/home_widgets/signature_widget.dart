import 'package:flutter/material.dart';

import '../../models/footer_model.dart';
import 'auto_scroll_widgets_widget.dart';

class SignatureWidget extends StatelessWidget {
  const SignatureWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 690,
      width: 1920,
      padding: const EdgeInsets.only(top: 50),
      color: const Color.fromRGBO(25, 26, 35, 0.37),
      child: Column(
        children: [
          const Padding(
            padding: EdgeInsets.all(20),
            child: Text(
              "I must explain to you how all this mistaken idea of denouncing this\npleasures and praising pain was born and I will give you a\ncomplete account of the system",
              textAlign: TextAlign.center,
              style: TextStyle(
                color: Color(0xfff5ffd0),
                fontSize: 30,
              ),
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: const [
              Padding(
                padding: EdgeInsets.only(top: 50, right: 200),
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
              Container(
                width: 45,
                height: 3,
                margin: const EdgeInsets.only(top: 10),
                decoration: const BoxDecoration(
                  gradient: LinearGradient(
                    begin: Alignment.centerLeft,
                    end: Alignment.centerRight,
                    colors: [
                      Color(0xff9f89f7),
                      Color(0xff6d2bff),
                      Color(0xff405cff),
                      Color(0xff21d3fd)
                    ],
                  ),
                ),
              ),
            ],
          ),
          const SizedBox(height: 150),
          AutoScrollWidgetsWidget(
            items: [
              Image.asset(footerModel['description']['socialSrc']['facebook']),
              Image.asset(footerModel['description']['socialSrc']['instagram']),
              Image.asset(footerModel['description']['socialSrc']['linkedIn']),
              Image.asset(footerModel['description']['socialSrc']['twitter']),
              Image.asset(footerModel['description']['socialSrc']['facebook']),
              Image.asset(footerModel['description']['socialSrc']['instagram']),
              Image.asset(footerModel['description']['socialSrc']['linkedIn']),
              Image.asset(footerModel['description']['socialSrc']['twitter']),
              Image.asset(footerModel['description']['socialSrc']['facebook']),
              Image.asset(footerModel['description']['socialSrc']['instagram']),
              Image.asset(footerModel['description']['socialSrc']['linkedIn']),
              Image.asset(footerModel['description']['socialSrc']['twitter']),
              Image.asset(footerModel['description']['socialSrc']['facebook']),
              Image.asset(footerModel['description']['socialSrc']['instagram']),
              Image.asset(footerModel['description']['socialSrc']['linkedIn']),
              Image.asset(footerModel['description']['socialSrc']['twitter']),
              Image.asset(footerModel['description']['socialSrc']['facebook']),
              Image.asset(footerModel['description']['socialSrc']['instagram']),
              Image.asset(footerModel['description']['socialSrc']['linkedIn']),
              Image.asset(footerModel['description']['socialSrc']['twitter']),
            ],
          )
        ],
      ),
    );
  }
}
