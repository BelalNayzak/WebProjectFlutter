import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:sizer/sizer.dart';

import '../../constants/font_sizes.dart';
import '../../models/services_models/categories_model.dart';
import '../../providers/categories_provider.dart';
import '../../screens/service_details_screen.dart';
import '../span_text_widget.dart';

class ThirdContainer extends StatelessWidget {
  const ThirdContainer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final CategoryModel visibleCategory =
        Provider.of<CategoriesProvider>(context).visibleCategoryProvider;

    final standardSize = MediaQuery.of(context).size;

    Widget landscapeOurCategoryButton(
        String text, void Function() stateFunction) {
      return InkWell(
        onTap: stateFunction,
        child: Row(
          children: [
            if (visibleCategory.categoryName == text)
              Image.asset(
                'assets/images/services/pseudo.png',
                height: standardSize.width * .05,
              ),
            SizedBox(width: standardSize.width * .015),
            Container(
              padding: EdgeInsets.symmetric(vertical: standardSize.width * .01),
              width: standardSize.width * .125,
              child: Text(
                text,
                softWrap: true,
                style: TextStyle(
                  color: Colors.white,
                  fontSize: standardSize.width * .015,
                  fontWeight: visibleCategory.categoryName == text
                      ? FontWeight.w800
                      : FontWeight.w300,
                ),
              ),
            ),
          ],
        ),
      );
    }

    Widget portraitOurCategoryButton(
        String text, void Function() stateFunction) {
      return Padding(
        padding: const EdgeInsets.all(8.0),
        child: InkWell(
          onTap: stateFunction,
          child: Container(
            padding: const EdgeInsets.symmetric(vertical: 8, horizontal: 15),
            decoration: ShapeDecoration(
              color: visibleCategory.categoryName == text
                  ? const Color(0xFF3A3062)
                  : const Color(0x8239305E),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(22),
              ),
            ),
            child: Text(
              text,
              textAlign: TextAlign.center,
              style: TextStyle(
                color: visibleCategory.categoryName == text
                    ? const Color(0xFFC6E383)
                    : Colors.white,
                fontSize: 14,
                fontWeight: visibleCategory.categoryName == text
                    ? FontWeight.w900
                    : FontWeight.w100,
                letterSpacing: 1,
              ),
            ),
          ),
        ),
      );
    }

    return MediaQuery.of(context).orientation == Orientation.landscape
        ? Container(
            margin: EdgeInsets.symmetric(
                horizontal: standardSize.width * .1, vertical: 100),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    RotatedBox(
                      quarterTurns: -1,
                      child: Text(
                        'OUR CATEGORIES',
                        style: TextStyle(
                          color: const Color(0x72ffffff),
                          fontSize: standardSize.width * .03,
                          fontWeight: FontWeight.w700,
                        ),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.symmetric(horizontal: standardSize.width * .005),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          for (int i = 0; i < categoriesModelData.length; i++)
                            landscapeOurCategoryButton(
                              categoriesModelData[i].categoryName,
                              () {
                                Provider.of<CategoriesProvider>(context,
                                        listen: false)
                                    .visibleCategoryState(i);
                              },
                            ),
                        ],
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  width: standardSize.width * .31,
                  height: standardSize.width * .5,
                  child: Stack(
                    children: [
                      Image.asset(
                        'assets/images/services/mask1.png',
                        width: standardSize.width * .25,
                      ),
                      Positioned(
                        right: standardSize.width * .03,
                        bottom: standardSize.width * .15,
                        child: Image.asset(
                          'assets/images/services/mask2.png',
                          width: standardSize.width * .2,
                        ),
                      ),
                    ],
                  ),
                ),
                Flexible(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        padding: const EdgeInsets.only(top: 20),
                        //width: 50.w,
                        child: SpanTextWidget(
                          textAlign: TextAlign.left,
                          textsList: [
                            TextSpan(
                              text:
                                  "Here’s what we do in ${visibleCategory.categoryName} category:\n",
                              style: const TextStyle(
                                color: Colors.white,
                                fontSize: 30,
                                fontFamily: "Kanit",
                                fontWeight: FontWeight.w700,
                              ),
                            ),
                            for (int i = 0;
                                i < visibleCategory.categoryServices.length;
                                i++)
                              TextSpan(
                                text:
                                    '\n${visibleCategory.categoryServices[i].serviceName}: ',
                                style: const TextStyle(color: Colors.white),
                                children: [
                                  for (int x = 0;
                                      x <
                                          visibleCategory.categoryServices[i]
                                              .serviceTools.length;
                                      x++)
                                    TextSpan(
                                        text:
                                            '${visibleCategory.categoryServices[i].serviceTools[x]}${visibleCategory.categoryServices[i].serviceTools.indexOf(visibleCategory.categoryServices[i].serviceTools[x]) == visibleCategory.categoryServices[i].serviceTools.length - 1 ? "." : ","} ',
                                        style:
                                            const TextStyle(color: Colors.grey))
                                ],
                              ),
                          ],
                        ),
                      ),
                      const SizedBox(height: 20),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          for (int x = 0;
                              x < visibleCategory.categoryServices.length;
                              x++)
                            Padding(
                              padding:
                                  const EdgeInsets.symmetric(vertical: 4.0),
                              child: InkWell(
                                onTap: () {
                                  Navigator.of(context).pushNamed(
                                      ServiceDetailsScreen.routeName);
                                  Provider.of<CategoriesProvider>(context,
                                              listen: false)
                                          .visibleServiceProvider =
                                      visibleCategory.categoryServices[x];
                                },
                                child: Wrap(
                                  crossAxisAlignment: WrapCrossAlignment.center,
                                  children: [
                                    Text(
                                      '+ ${visibleCategory.categoryServices[x].serviceName} ',
                                      style: const TextStyle(
                                        color: Colors.white,
                                        height: 1.1,
                                        fontSize: 25,
                                      ),
                                    ),
                                    SizedBox(
                                        height: 20,
                                        child: Image.asset(
                                          'assets/images/services/Vector.png',
                                        )),
                                  ],
                                ),
                              ),
                            ),
                        ],
                      ),
                    ],
                  ),
                ),
              ],
            ),
          )
        : Container(
            margin: EdgeInsets.only(
                left: standardSize.width * .03,
                right: standardSize.width * .03,
                bottom: 100),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.only(bottom: 8.0),
                  child: Row(
                    children: [
                      Image.asset('assets/images/services/menu.png'),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text(
                          'CATEGORIES',
                          style: TextStyle(
                            color: const Color(0xFFECA3EB),
                            fontSize: standardSize.width * .05,
                            fontWeight: FontWeight.w700,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                Wrap(
                  children: [
                    for (int i = 0; i < categoriesModelData.length; i++)
                      portraitOurCategoryButton(
                        categoriesModelData[i].categoryName,
                        () {
                          Provider.of<CategoriesProvider>(context,
                                  listen: false)
                              .visibleCategoryState(i);
                        },
                      ),
                  ],
                ),
                Container(
                  padding: const EdgeInsets.symmetric(vertical: 50),
                  child: SpanTextWidget(
                    textAlign: TextAlign.left,
                    textsList: [
                      TextSpan(
                        text:
                            "Here’s what we do in ${visibleCategory.categoryName} category:\n",
                        style: const TextStyle(
                          color: Colors.white,
                          fontSize: 30,
                          fontFamily: "Kanit",
                          fontWeight: FontWeight.w700,
                        ),
                      ),
                      for (int i = 0;
                          i < visibleCategory.categoryServices.length;
                          i++)
                        TextSpan(
                          text:
                              '\n${visibleCategory.categoryServices[i].serviceName}: ',
                          style: const TextStyle(color: Colors.white),
                          children: [
                            for (int x = 0;
                                x <
                                    visibleCategory.categoryServices[i]
                                        .serviceTools.length;
                                x++)
                              TextSpan(
                                  text:
                                      '${visibleCategory.categoryServices[i].serviceTools[x]}${visibleCategory.categoryServices[i].serviceTools.indexOf(visibleCategory.categoryServices[i].serviceTools[x]) == visibleCategory.categoryServices[i].serviceTools.length - 1 ? "." : ","} ',
                                  style: const TextStyle(color: Colors.grey))
                          ],
                        ),
                    ],
                  ),
                ),
                Container(
                  padding: EdgeInsets.only(left: standardSize.width * .1),
                  width: standardSize.width,
                  height: standardSize.width * 0.8,
                  child: Stack(
                    children: [
                      Image.asset(
                        'assets/images/services/mask1.png',
                        width: standardSize.width * .5,
                      ),
                      Positioned(
                        left: standardSize.width * .2,
                        top: standardSize.width * .3,
                        child: Image.asset(
                          'assets/images/services/mask2.png',
                          width: standardSize.width * .4,
                        ),
                      ),
                    ],
                  ),
                ),
                Wrap(
                  //crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    for (int x = 0;
                        x < visibleCategory.categoryServices.length;
                        x++)
                      Padding(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 20.0, vertical: 5),
                        child: InkWell(
                          onTap: () {
                            Navigator.of(context)
                                .pushNamed(ServiceDetailsScreen.routeName);
                            Provider.of<CategoriesProvider>(context,
                                        listen: false)
                                    .visibleServiceProvider =
                                visibleCategory.categoryServices[x];
                          },
                          child: Wrap(
                            crossAxisAlignment: WrapCrossAlignment.center,
                            children: [
                              Text(
                                '+ ${visibleCategory.categoryServices[x].serviceName} ',
                                style: const TextStyle(
                                  color: Colors.white,
                                  height: 1.1,
                                  fontSize: 25,
                                ),
                              ),
                              SizedBox(
                                  height: 15,
                                  child: Image.asset(
                                    'assets/images/services/Vector.png',
                                  )),
                            ],
                          ),
                        ),
                      ),
                  ],
                ),
              ],
            ),
          );
  }
}
