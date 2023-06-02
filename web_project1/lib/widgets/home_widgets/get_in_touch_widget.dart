import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

import '../../constants/font_sizes.dart';
import '../../screens/contact_us_screen.dart';
import '../span_text_widget.dart';

class GetInTouchWidget extends StatelessWidget {
  const GetInTouchWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 60.w,
      width: double.infinity,
      margin: EdgeInsets.symmetric(vertical: 20.w, horizontal: 30.w),
      color: const Color(0xff2a3867),
      child: Stack(
        alignment: Alignment.topCenter,
        children: [
          Column(
            children: [
              Container(
                width: 500,
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
                            color: Colors.purple, fontSize: FontSizes.xLarge)),
                    TextSpan(
                        text: 'fits ',
                        style: TextStyle(
                            color: Colors.white, fontSize: FontSizes.xLarge)),
                    TextSpan(
                        text: 'perfectly.',
                        style: TextStyle(
                            color: Colors.purple, fontSize: FontSizes.xLarge)),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 25.0),
                child: SpanTextWidget(textAlign: TextAlign.center, textsList: [
                  TextSpan(
                    text:
                        'Unique results are produced \nby our unique process.',
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
                        borderRadius: BorderRadius.circular(4))),
                child: Text(
                  "Get in Touch",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: FontSizes.xSmall,
                  ),
                ),
              ),
            ],
          ),
          Positioned(
              top: -50,
              right: -60,
              child: SizedBox(
                  width: 300, child: Image.asset('assets/images/circles.png')))
        ],
      ),
    );
  }
}
