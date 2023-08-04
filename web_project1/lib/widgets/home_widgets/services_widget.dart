import 'package:flutter/material.dart';

import '../span_text_widget.dart';

class ServicesWidget extends StatelessWidget {
  const ServicesWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final standardSize = MediaQuery.of(context).size;

    return MediaQuery.of(context).orientation == Orientation.landscape
        ? const SpanTextWidget(
            textAlign: TextAlign.center,
            textsList: [
              TextSpan(
                text: 'Services and Solutions ',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 31,
                  fontWeight: FontWeight.w700,
                ),
              ),
              TextSpan(
                text: 'with\nfeatured digital methods',
                style: TextStyle(
                  color: Color(0xffdffb6d),
                  fontSize: 31,
                  fontWeight: FontWeight.w100,
                ),
              ),
            ],
          )
        : SpanTextWidget(
            textAlign: TextAlign.center,
            textsList: [
              TextSpan(
                text: 'Services and Solutions ',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: standardSize.width * .065,
                  fontWeight: FontWeight.w700,
                ),
              ),
              TextSpan(
                text: 'with\nfeatured digital methods',
                style: TextStyle(
                    color: const Color(0xffdffb6d),
                    fontSize: standardSize.width * .065,
                    fontWeight: FontWeight.w100),
              ),
            ],
          );
  }
}
