import 'package:flutter/material.dart';
import 'package:marquee/marquee.dart';
import 'package:sizer/sizer.dart';
import 'package:web_project1/constants/font_sizes.dart';
import 'package:web_project1/widgets/services_widgets/first_container.dart';
import 'package:web_project1/widgets/services_widgets/fourth_container.dart';
import 'package:web_project1/widgets/span_text_widget.dart';

import '../models/app_bar_model.dart';
import '../models/footer_model.dart';

import '../widgets/app_bar_widget.dart';
import '../widgets/footer_widget.dart';
import '../widgets/services_widgets/third_container.dart';

class ServicesScreen extends StatelessWidget {
  static const routeName = '/services';

  const ServicesScreen({super.key});

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
          child: Container(
            decoration: const BoxDecoration(
              image: DecorationImage(
                  image: AssetImage(
                      'assets/images/services/ServicesBackGround.png'),
                  fit: BoxFit.fill),
            ),
            child: Column(
              mainAxisSize: MainAxisSize.max,
              children: [
                const SizedBox(height: 150),
                const FirstContainer(),
                Container(
                  height: 50,
                  color: const Color(0x685a4c94),
                  margin: const EdgeInsets.symmetric(vertical: 50),
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
                const ThirdContainer(),
                const FourthContainer(),
                FooterWidget(footerModel: footerModelData),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
