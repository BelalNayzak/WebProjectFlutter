import 'package:flutter/material.dart';
import 'package:marquee/marquee.dart';
import 'package:sizer/sizer.dart';
import 'package:web_project1/constants/font_sizes.dart';
import 'package:web_project1/widgets/span_text_widget.dart';

import '../models/app_bar_model.dart';
import '../models/footer_model.dart';

import '../widgets/app_bar_widget.dart';
import '../widgets/footer_widget.dart';
import 'service_details_screen.dart';

class ServicesScreen extends StatefulWidget {
  static const routeName = '/services';

  const ServicesScreen({super.key});

  @override
  State<ServicesScreen> createState() => _ServicesScreenState();
}

class _ServicesScreenState extends State<ServicesScreen> {
  String categoryDetails = 'Design';
  Map<String, bool> ourCategoryState = {
    'Design': true,
    'User Experience &\nInterface Design': false,
    'Motion': false,
    'Digital\nMarketing': false,
    'Multimedia': false,
  };

  Widget firstOurCategoryButton(String text, void Function() stateFunction) {
    return InkWell(
        onTap: stateFunction,
        child: Row(
          children: [
            if (ourCategoryState[text] == true)
              Image.asset('assets/images/services/pseudo.png'),
            SizedBox(width: 2.w),
            Padding(
              padding: EdgeInsets.symmetric(vertical: 1.3.h),
              child: Text(
                text,
                style: TextStyle(
                  color: Colors.black,
                  fontSize: FontSizes.small,
                  fontWeight: ourCategoryState[text] == true
                      ? FontWeight.w800
                      : FontWeight.w500,
                ),
              ),
            ),
          ],
        ));
  }

  @override
  Widget build(BuildContext context) {
    final scrollControllerServices = ScrollController();
    return Scaffold(
      extendBody: true,
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        backgroundColor: const Color.fromRGBO(2, 3, 3, 0.15),
        flexibleSpace: AppBarWidget(
            routeName: ServicesScreen.routeName, appBarModel: appBarModelData),
      ),
      body: Scrollbar(
        thumbVisibility: true,
        trackVisibility: true,
        controller: scrollControllerServices,
        child: SingleChildScrollView(
          controller: scrollControllerServices,
          child: Stack(
            alignment: Alignment.topCenter,
            children: [
              Image.asset('assets/images/services/Services.png'),
              Column(
                mainAxisSize: MainAxisSize.max,
                children: [
                  SizedBox(height: 15.h),
                  Container(
                    //width: 200.w,
                    height: 34.h,
                    color: Colors.white.withOpacity(.15),
                    margin: EdgeInsets.symmetric(horizontal: 30.w),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          color: Colors.white.withOpacity(.15),
                          width: 60.w,
                          height: 11.h,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Padding(
                                padding: const EdgeInsets.only(left: 8, top: 8),
                                child: SpanTextWidget(
                                  textAlign: TextAlign.left,
                                  textsList: [
                                    TextSpan(
                                      text: "OUR MARKETING SERVICES\n",
                                      style: TextStyle(
                                        color: Colors.black,
                                        height: 1.1,
                                        fontSize: FontSizes.large,
                                        fontWeight: FontWeight.w800,
                                      ),
                                    ),
                                    TextSpan(
                                      text: "HOME ",
                                      style: TextStyle(
                                        color: Colors.black,
                                        fontSize: FontSizes.xxSmall,
                                        fontWeight: FontWeight.w800,
                                        letterSpacing: 1,
                                      ),
                                    ),
                                    TextSpan(
                                      text: "> ",
                                      style: TextStyle(
                                        color: const Color(0xfffecc05),
                                        fontSize: FontSizes.xSmall,
                                        fontWeight: FontWeight.w800,
                                      ),
                                    ),
                                    TextSpan(
                                      text: "SERVICES",
                                      style: TextStyle(
                                        color: Colors.black,
                                        fontSize: FontSizes.xxSmall,
                                        fontWeight: FontWeight.w800,
                                        letterSpacing: 1,
                                      ),
                                    )
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                        Container(
                          width: 85.w,
                          height: 10.h,
                          color: Colors.white.withOpacity(.15),
                          margin: const EdgeInsets.only(left: 75, top: 30),
                          child: SpanTextWidget(
                              textAlign: TextAlign.left,
                              textsList: [
                                TextSpan(
                                  text:
                                      "Consumers today rely heavily on digital means to research products. We research a brand of bldend engaging with it, according to the meanwhile, 51% of consumers say they use Google to research products before buying.",
                                  style: TextStyle(
                                      height: 1.1,
                                      color: Colors.black,
                                      fontSize: FontSizes.medium,
                                      fontWeight: FontWeight.w600),
                                )
                              ]),
                        ),
                        Container(
                          margin: EdgeInsets.only(left: 103.w, top: 4.h),
                          child: SpanTextWidget(
                            textAlign: TextAlign.left,
                            textsList: [
                              TextSpan(
                                text: "25K+\n",
                                style: TextStyle(
                                  color: Colors.yellow,
                                  fontSize: FontSizes.medium,
                                  fontWeight: FontWeight.w800,
                                ),
                              ),
                              TextSpan(
                                text: 'PROJECTS COMPLETED SUCCESSFULLY',
                                style: TextStyle(
                                  color: Colors.black,
                                  height: 1,
                                  fontSize: FontSizes.small,
                                  fontWeight: FontWeight.w800,
                                ),
                              )
                            ],
                          ),
                        )
                      ],
                    ),
                  ),
                  Container(
                    height: 5.h,
                    color: const Color(0x685a4c94),
                    margin: EdgeInsets.symmetric(vertical: 3.h),
                    child: Marquee(
                      text:
                          'AGENCY           TYPOGRAPHY          DESIGN           INTERACTION           ELEMENT           DIGITAL SOLUTIONS           STRATEGY',
                      style: const TextStyle(color: Colors.white),
                      scrollAxis: Axis.horizontal,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      blankSpace: 50.0,
                      velocity: 50.0,
                      startPadding: 10.0,
                      accelerationDuration: const Duration(seconds: 1),
                      accelerationCurve: Curves.linear,
                      decelerationDuration: const Duration(milliseconds: 500),
                      decelerationCurve: Curves.easeOut,
                    ),
                  ),
                  Container(
                    height: 50.h,
                    margin: EdgeInsets.only(
                        left: 17.w, right: 20.w, top: 5.h, bottom: 8.h),
                    color: Colors.white.withOpacity(.15),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Expanded(
                          child: Padding(
                            padding: EdgeInsets.only(top: 3.h),
                            child: RotatedBox(
                              quarterTurns: -1,
                              child: Text(
                                'OUR CATEGORY',
                                style: TextStyle(
                                  color: Colors.black,
                                  //color: const Color(0x72ffffff),
                                  fontSize: FontSizes.xxLarge,
                                  fontWeight: FontWeight.w700,
                                ),
                              ),
                            ),
                          ),
                        ),
                        Expanded(
                          flex: 4,
                          child: Padding(
                            padding: EdgeInsets.only(top: 4.h, left: 2.w),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                firstOurCategoryButton('Design', () {
                                  setState(() {
                                    categoryDetails = 'Design';
                                    ourCategoryState = {
                                      'Design': true,
                                      'User Experience &\nInterface Design':
                                          false,
                                      'Motion': false,
                                      'Digital\nMarketing': false,
                                      'Multimedia': false,
                                    };
                                  });
                                }),
                                firstOurCategoryButton(
                                    'User Experience &\nInterface Design', () {
                                  setState(() {
                                    categoryDetails =
                                        'User Experience & Interface Design';
                                    ourCategoryState = {
                                      'Design': false,
                                      'User Experience &\nInterface Design':
                                          true,
                                      'Motion': false,
                                      'Digital\nMarketing': false,
                                      'Multimedia': false
                                    };
                                  });
                                }),
                                firstOurCategoryButton('Motion', () {
                                  setState(() {
                                    categoryDetails = 'Motion';
                                    ourCategoryState = {
                                      'Design': false,
                                      'User Experience &\nInterface Design':
                                          false,
                                      'Motion': true,
                                      'Digital\nMarketing': false,
                                      'Multimedia': false
                                    };
                                  });
                                }),
                                firstOurCategoryButton('Digital\nMarketing',
                                    () {
                                  setState(() {
                                    categoryDetails = 'Digital Marketing';
                                    ourCategoryState = {
                                      'Design': false,
                                      'User Experience &\nInterface Design':
                                          false,
                                      'Motion': false,
                                      'Digital\nMarketing': true,
                                      'Multimedia': false
                                    };
                                  });
                                }),
                                firstOurCategoryButton('Multimedia', () {
                                  setState(() {
                                    categoryDetails = 'Multimedia';
                                    ourCategoryState = {
                                      'Design': false,
                                      'User Experience &\nInterface Design':
                                          false,
                                      'Motion': false,
                                      'Digital\nMarketing': false,
                                      'Multimedia': true
                                    };
                                  });
                                }),
                              ],
                            ),
                          ),
                        ),
                        Expanded(
                          flex: 8,
                          child: Stack(
                            children: [
                              Padding(
                                padding: EdgeInsets.only(
                                  top: 2.h,
                                ),
                                child: SizedBox(
                                  width: 50.w,
                                  //height: 30.h,
                                  child: Image.asset('assets/images/services/mask1.png'),
                                ),
                              ),
                              Padding(
                                padding: EdgeInsets.only(top: 18.h, left: 18.w),
                                child: SizedBox(
                                  width: 40.w,
                                  //height: 10.h,
                                  child: Image.asset('assets/images/services/mask2.png'),
                                ),
                              ),
                            ],
                          ),
                        ),
                        Expanded(
                          flex: 7,
                          child: Column(
                            children: [
                              Container(
                                padding: EdgeInsets.only(top: 5.h),
                                width: 50.w,
                                child: SpanTextWidget(
                                    textAlign: TextAlign.left,
                                    textsList: [
                                      TextSpan(
                                        text:
                                            "Here’s what we do in $categoryDetails category:\n",
                                        style: const TextStyle(
                                          color: Colors.black,
                                          fontSize: 30,
                                          fontFamily: "Kanit",
                                          fontWeight: FontWeight.w700,
                                        ),
                                      ),
                                      const TextSpan(
                                          text: '\nGraphic design: ',
                                          style:
                                              TextStyle(color: Colors.white)),
                                      const TextSpan(
                                          text:
                                              'Adobe Photoshop, Adobe Illustrator, CorelDRAW, Sketch, Canva.\n',
                                          style: TextStyle(color: Colors.grey)),
                                      const TextSpan(
                                          text: 'Branding: ',
                                          style:
                                              TextStyle(color: Colors.white)),
                                      const TextSpan(
                                          text:
                                              'Adobe Illustrator, Adobe Photoshop, Sketch, Inkscape.\n',
                                          style: TextStyle(color: Colors.grey)),
                                      const TextSpan(
                                          text: 'Web design: ',
                                          style:
                                              TextStyle(color: Colors.white)),
                                      const TextSpan(
                                          text:
                                              'Adobe Photoshop, Sketch, Adobe XD, FInvision Studio.\n',
                                          style: TextStyle(color: Colors.grey)),
                                      const TextSpan(
                                          text: 'Illustration: ',
                                          style:
                                              TextStyle(color: Colors.white)),
                                      const TextSpan(
                                          text:
                                              'Adobe Illustrator, Procreate, CorelDRAW, Sketch, Inkscape.\n',
                                          style: TextStyle(color: Colors.grey)),
                                      const TextSpan(
                                          text: 'Print design: ',
                                          style:
                                              TextStyle(color: Colors.white)),
                                      const TextSpan(
                                          text:
                                              'Adobe InDesign, QuarkXPress, Canva, Lucidpress, Affinity Publisher.\nPackaging design: Adobe Illustrator, Sketch, Inkscape, ArtiosCAD, Esko Studio.',
                                          style: TextStyle(color: Colors.grey)),
                                    ]),
                              ),
                              SizedBox(height: 2.h),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.symmetric(
                                        vertical: 4.0),
                                    child: InkWell(
                                      onTap: () {
                                        Navigator.of(context).pushNamed(ServiceDetailsScreen.routeName);
                                      },
                                      child: Row(
                                        children: [
                                          Text(
                                            '+Graphic Design ',
                                            style: TextStyle(
                                                height: 1.1,
                                                fontSize: FontSizes.xMedium,
                                                fontWeight: FontWeight.w700),
                                          ),
                                          SizedBox(
                                              height: 3.w,
                                              child: Image.asset(
                                                'assets/images/services/Vector.png',
                                                color: Colors.black,
                                              ))
                                        ],
                                      ),
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.symmetric(
                                        vertical: 4.0),
                                    child: InkWell(
                                      onTap: () {
                                        Navigator.of(context).pushNamed(ServiceDetailsScreen.routeName);

                                      },
                                      child: Row(
                                        children: [
                                          Text(
                                            '+Branding ',
                                            style: TextStyle(
                                                height: 1.1,
                                                fontSize: FontSizes.xMedium,
                                                fontWeight: FontWeight.w700),
                                          ),
                                          SizedBox(
                                              height: 3.w,
                                              child: Image.asset(
                                                'assets/images/services/Vector.png',
                                                color: Colors.black,
                                              ))
                                        ],
                                      ),
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.symmetric(
                                        vertical: 4.0),
                                    child: InkWell(
                                      onTap: () {
                                        Navigator.of(context).pushNamed(ServiceDetailsScreen.routeName);
                                      },
                                      child: Row(
                                        children: [
                                          Text(
                                            '+Print Design ',
                                            style: TextStyle(
                                                height: 1.1,
                                                fontSize: FontSizes.xMedium,
                                                fontWeight: FontWeight.w700),
                                          ),
                                          SizedBox(
                                              height: 3.w,
                                              child: Image.asset(
                                                'assets/images/services/Vector.png',
                                                color: Colors.black,
                                              ))
                                        ],
                                      ),
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.symmetric(
                                        vertical: 4.0),
                                    child: InkWell(
                                      onTap: () {
                                        Navigator.of(context).pushNamed(ServiceDetailsScreen.routeName);

                                      },
                                      child: Row(
                                        children: [
                                          Text(
                                            '+Web Design ',
                                            style: TextStyle(
                                                height: 1.1,
                                                fontSize: FontSizes.xMedium,
                                                fontWeight: FontWeight.w700),
                                          ),
                                          SizedBox(
                                              height: 3.w,
                                              child: Image.asset(
                                                'assets/images/services/Vector.png',
                                                color: Colors.black,
                                              ))
                                        ],
                                      ),
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.symmetric(
                                        vertical: 4.0),
                                    child: InkWell(
                                      onTap: () {
                                        Navigator.of(context).pushNamed(ServiceDetailsScreen.routeName);

                                      },
                                      child: Row(
                                        children: [
                                          Text(
                                            '+Illustration ',
                                            style: TextStyle(
                                                height: 1.1,
                                                fontSize: FontSizes.xMedium,
                                                fontWeight: FontWeight.w700),
                                          ),
                                          SizedBox(
                                              height: 3.w,
                                              child: Image.asset(
                                                'assets/images/services/Vector.png',
                                                color: Colors.black,
                                              ))
                                        ],
                                      ),
                                    ),
                                  ),
                                ],
                              )
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    height: 40.h,
                    color: Colors.white.withOpacity(.15),
                    margin: EdgeInsets.only(left: 30.w),
                    child: Row(
                      children: [
                        Expanded(
                          child: Padding(
                            padding: const EdgeInsets.only(left: 160.0),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                const Spacer(flex: 3),
                                SpanTextWidget(
                                  textAlign: TextAlign.left,
                                  textsList: [
                                    TextSpan(
                                      text: 'Have a project ',
                                      style: TextStyle(
                                          height: 1,
                                          color: Colors.black,
                                          fontSize: FontSizes.xxxLarge,
                                          fontWeight: FontWeight.w900),
                                    ),
                                    TextSpan(
                                      text: 'in mind?',
                                      style: TextStyle(
                                        height: 1,
                                        color: Colors.black,
                                        fontSize: FontSizes.xxLarge,
                                      ),
                                    ),
                                  ],
                                ),
                                const Spacer(),
                                SpanTextWidget(
                                    textAlign: TextAlign.left,
                                    textsList: [
                                      TextSpan(
                                        text:
                                            'Unique results are produced by our unique process.',
                                        style: TextStyle(
                                          height: 1,
                                          color: Colors.black,
                                          fontSize: FontSizes.xxMedium,
                                          fontWeight: FontWeight.w100,
                                        ),
                                      )
                                    ]),
                                const Spacer(flex: 2),
                                FilledButton(
                                  style: FilledButton.styleFrom(
                                    backgroundColor: const Color(0xffdffb6d),
                                    shape: RoundedRectangleBorder(
                                        borderRadius: BorderRadius.circular(7)),
                                  ),
                                  onPressed: () {},
                                  child: Padding(
                                    padding: const EdgeInsets.symmetric(
                                        horizontal: 10, vertical: 10),
                                    child: Text(
                                      "Get in Touch",
                                      style: TextStyle(
                                        color: Colors.black,
                                        fontSize: FontSizes.small,
                                      ),
                                    ),
                                  ),
                                ),
                                const Spacer(flex: 3),
                              ],
                            ),
                          ),
                        ),
                        Expanded(
                          child: Column(
                            children: [
                              Image.asset('assets/images/services/frame3.png',
                                  fit: BoxFit.scaleDown),
                            ],
                          ),
                        ),
                      ],
                    ),
                  )
                ],
              ),
              FooterWidget(footerModel: footerModelData),
            ],
          ),
        ),
      ),
    );
  }
}
