import 'package:flutter/material.dart';

// My trying
/*
class JouSpanText {
  final String stringText;
  final TextStyle textStyle;

  JouSpanText(this.stringText, this.textStyle);

  factory JouSpanText(Map<String, dynamic> textsList) {
    return JouSpanText(textsList['stringText'], textsList['textStyle']);
  }
}

Map<String, dynamic> x = {'stringText': String, 'textStyle': TextStyle};

[
{ 'stringText': stringText,
'textStyle':textStyle
},
]



class StringText {
  final String stringText;

  StringText(this.stringText);
}

class TextStyle {
  final TextStyle textStyle;

  TextStyle(this.textStyle);
}
*/

class SpanTextWidget extends StatelessWidget {
  final TextAlign textAlign;
  final List<TextSpan> textsList;

  const SpanTextWidget({
    Key? key,
    required this.textAlign,
    required this.textsList,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final int textsNumber = textsList.length;
    return RichText(
      textAlign: textAlign,
      overflow: TextOverflow.visible,
      text: TextSpan(
        children: [
          for (int i = 0; i < textsNumber; i++) textsList[i],
        ],
      ),
    );
  }
}
