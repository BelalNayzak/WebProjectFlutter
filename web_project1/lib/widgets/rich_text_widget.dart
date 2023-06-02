import 'package:flutter/material.dart';

class RichTextWidget extends StatelessWidget {
  final String boldText;
  final String normalText;
  final TextStyle boldTextStyle;
  final TextStyle normalTextStyle;

  const RichTextWidget(
      {Key? key,
      required this.boldText,
      required this.normalText,
      required this.boldTextStyle,
      required this.normalTextStyle})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return RichText(
        overflow: TextOverflow.visible,
        text: TextSpan(children: [
          TextSpan(text: boldText, style: boldTextStyle
              ),
          TextSpan(text: normalText, style: normalTextStyle
              )
        ]));
  }
}
