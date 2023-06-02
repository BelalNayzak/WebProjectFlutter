import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

import '/constants/font_sizes.dart';
import '/widgets/rich_text_widget.dart';

class CaseStudiesWidget extends StatelessWidget {
  const CaseStudiesWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 135.w,
      padding: EdgeInsets.symmetric(horizontal: 30.w),
      child: Row(
        children: [
          Expanded(
            flex: 4,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 8.0),
                  child: Text(
                    'CASE STUDIES',
                    style: TextStyle(
                        fontSize: FontSizes.xSmall,
                        color: const Color(0xffb9b9b9),
                        letterSpacing: 2),
                  ),
                ),
                RichTextWidget(
                  boldText: 'We Are A Digital Design Agency With Best Value ',
                  normalText: 'Check Our Work',
                  boldTextStyle: TextStyle(
                      color: Colors.white,
                      fontSize: FontSizes.xxxMedium,
                      fontWeight: FontWeight.w900),
                  normalTextStyle: TextStyle(
                      color: const Color(0xffdffb6d),
                      fontSize: FontSizes.xxxMedium,
                      fontWeight: FontWeight.w100),
                ),
                const Spacer(),
                RichTextWidget(
                  boldText: '88',
                  normalText: '+',
                  boldTextStyle: TextStyle(
                      color: const Color(0xffdffb6d),
                      fontSize: FontSizes.xMassive,
                      fontWeight: FontWeight.w700),
                  normalTextStyle: const TextStyle(color: Color(0xffdffb6d)),
                ),
                const Padding(
                  padding: EdgeInsets.symmetric(vertical: 8.0),
                  child: Text(
                    'Project complete by us',
                    style: TextStyle(
                        color: Colors.white, fontWeight: FontWeight.w700),
                  ),
                ),
                Text(
                  'The latest measurements indicate the quick loading of pages in accordance with the standards for positioning of the best mark.',
                  style: TextStyle(
                    color: const Color(0xffc2c2c2),
                    fontSize: FontSizes.small,
                  ),
                ),
                Padding(
                    padding: const EdgeInsets.symmetric(vertical: 45.0),
                    child: FilledButton(
                      onPressed: () {},
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
                            fontSize: FontSizes.xxSmall,
                            fontWeight: FontWeight.w600,
                            letterSpacing: 1.96,
                          ),
                        ),
                      ),
                    ))
              ],
            ),
          ),
          const Spacer(),
          Expanded(
            flex: 4,
            child: Column(
              children: [
                SizedBox(
                  width: 500,
                  height: 300,
                  child: Card(
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(15)),
                    child: Image.asset('assets/images/01.png'),
                  ),
                ),
                SizedBox(
                  width: 500,
                  height: 300,
                  child: Card(
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(15)),
                    child: Image.asset('assets/images/01.png'),
                  ),
                ),
                SizedBox(
                  width: 500,
                  height: 300,
                  child: Card(
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(15)),
                    child: Image.asset('assets/images/01.png'),
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
