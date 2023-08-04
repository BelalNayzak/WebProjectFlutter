import 'package:flutter/material.dart';

import '../../models/app_bar_model.dart';
import '../../models/footer_model.dart';
import '../../models/services_models/categories_model.dart';

import '../../widgets/app_bar_widget.dart';
import '../../widgets/footer_widget.dart';
import '../../widgets/home_widgets/case_studies_widget.dart';
import '../../widgets/home_widgets/category_card_widget.dart';
import '../../widgets/home_widgets/get_in_touch_widget.dart';
import '../../widgets/home_widgets/signature_widget.dart';
import '../../widgets/home_widgets/we_assist_widget.dart';
import '../../widgets/span_text_widget.dart';

class HomePortraitScreen extends StatelessWidget {
  const HomePortraitScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final scrollControllerHome = ScrollController();
    final scrollControllerHome2 = ScrollController();
    final standardSize = MediaQuery.of(context).size;

    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        backgroundColor: const Color.fromRGBO(2, 3, 3, 0.15),
        flexibleSpace:
            AppBarWidget(routeName: '/', appBarModel: appBarModelData),
      ),
      body: Scrollbar(
        thumbVisibility: true,
        trackVisibility: true,
        controller: scrollControllerHome,
        child: SingleChildScrollView(
          controller: scrollControllerHome,
          child: Container(
            decoration: const BoxDecoration(
              image: DecorationImage(
                image: AssetImage('assets/images/home/HomeBackGround.png'),
                fit: BoxFit.fill,
              ),
            ),
            child: Column(
              children: [
                const SizedBox(height: 50),
                const WeAssistWidget(),
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 80),
                  child: Image.asset(
                    'assets/images/home/WebName.png',
                  ),
                ),
                SpanTextWidget(
                  textAlign: TextAlign.center,
                  textsList: [
                    TextSpan(
                      text: 'Services and Solutions ',
                      style: TextStyle(
                          fontSize: standardSize.width * .065,
                          fontWeight: FontWeight.w700),
                    ),
                    TextSpan(
                      text: 'with\nfeatured digital methods',
                      style: TextStyle(
                          color: const Color(0xffdffb6d),
                          fontSize: standardSize.width * .065,
                          fontWeight: FontWeight.w100),
                    ),
                  ],
                ),
                const SizedBox(height: 50),
                standardSize.width < (categoriesModelData.length * 245)
                    ? Scrollbar(
                        controller: scrollControllerHome2,
                        thumbVisibility: true,
                        trackVisibility: true,
                        child: SizedBox(
                          width: double.infinity,
                          height: 245,
                          child: Center(
                            child: ListView(
                              controller: scrollControllerHome2,
                              scrollDirection: Axis.horizontal,
                              children: [
                                for (int i = 0;
                                    i < categoriesModelData.length;
                                    i++)
                                  CategoryCardWidget(
                                    category: categoriesModelData[i],
                                  ),
                              ],
                            ),
                          ),
                        ),
                      )
                    : Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          for (int i = 0; i < categoriesModelData.length; i++)
                            CategoryCardWidget(
                              category: categoriesModelData[i],
                            ),
                        ],
                      ),
                const SizedBox(height: 100),
                const CaseStudiesWidget(),
                const SignatureWidget(),
                const GetInTouchWidget(),
                FooterWidget(footerModel: footerModelData),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
