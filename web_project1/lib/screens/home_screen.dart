/*
import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';
import 'package:web_project1/widgets/home_widgets/we_assist_widget.dart';

import '../models/services_models/categories_model.dart';
import '/constants/font_sizes.dart';

import '/models/app_bar_model.dart';
import '/models/footer_model.dart';
import '/models/home_models/service_card_model.dart';

import '/widgets/app_bar_widget.dart';
import '/widgets/footer_widget.dart';
import '/widgets/span_text_widget.dart';
import '/widgets/home_widgets/case_studies_widget.dart';
import '/widgets/home_widgets/category_card_widget.dart';
import '/widgets/home_widgets/signature_widget.dart';
import '/widgets/home_widgets/get_in_touch_widget.dart';
import 'projects_screen.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final scrollControllerHome = ScrollController();
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
            decoration: BoxDecoration(image: DecorationImage(image: AssetImage('assets/images/home/HOME.png'), fit: BoxFit.fill, )),
            child: Stack(
              children: [
                Image.asset('assets/images/home/HOME.png',width: double.infinity, fit: BoxFit.fill,),
                Column(
                  children: [
                    SizedBox(height: standardSize.width * .15),
                    const WeAssistWidget(),
                    Padding(
                      padding: EdgeInsets.symmetric(vertical: standardSize.width * .15),
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
                              color: Colors.white,
                              fontSize: FontSizes.xxMedium,
                              fontWeight: FontWeight.w700),
                        ),
                        TextSpan(
                          text: 'with\nfeatured digital methods',
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: FontSizes.xxMedium,
                              fontWeight: FontWeight.w100),
                        ),
                      ],
                    ),
                    const SizedBox(height: 50),
                    */
/*SingleChildScrollView(
                      scrollDirection: Axis.horizontal,
                      child: Row(
                        children: [
                          for (int i = 0; i < categoriesModelData.length; i++)
                            CategoryCardWidget(
                              category: categoriesModelData[i],
                            ),
                        ],
                      ),
                    ),*/ /*

                    */
/*SizedBox(
                      width: 250,
                      child: ListView.builder(
                        itemBuilder: (BuildContext context, int index) {
                          return ServiceCardWidget(
                            serviceName: serviceCardModelData.serviceName[index],
                            serviceDescription:
                                serviceCardModelData.serviceDescription[index],
                            serviceRouteName:
                                serviceCardModelData.serviceRouteName[index],
                          );
                        },
                        shrinkWrap: true,
                        itemCount: serviceCardModelData.serviceName.length,
                        scrollDirection: Axis.horizontal,
                      ),
                    ),*/ /*

                    Wrap(
                      alignment: WrapAlignment.center,
                      children: [
                        for (int i = 0;
                            i < serviceCardModelData.serviceName.length;
                            i++)
                          CategoryCardWidget(
                            category: categoriesModelData[i],
                          ),
                      ],
                    ),
                    const SizedBox(height: 150),
                    const CaseStudiesWidget(),
                    const SizedBox(height: 150),
                    const SignatureWidget(),
                    const GetInTouchWidget(),
                    const SizedBox(height: 400),
                  ],
                ),
                FooterWidget(footerModel: footerModelData),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
*/

import 'package:flutter/material.dart';

import '../widgets/home_widgets/services_widget.dart';
import '/models/app_bar_model.dart';
import '/models/services_models/categories_model.dart';
import '/models/footer_model.dart';

import '/widgets/app_bar_widget.dart';
import '/widgets/span_text_widget.dart';
import '/widgets/footer_widget.dart';
import '/widgets/home_widgets/we_assist_widget.dart';
import '/widgets/home_widgets/category_card_widget.dart';
import '/widgets/home_widgets/case_studies_widget.dart';
import '/widgets/home_widgets/signature_widget.dart';
import '/widgets/home_widgets/get_in_touch_widget.dart';
import 'portrait_screens/home_portrait_screen.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final scrollControllerHome = ScrollController();
    final scrollControllerHome2 = ScrollController();
    final standardSize = MediaQuery.of(context).size;
    final orientation = MediaQuery.of(context).orientation;

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
                      image:
                          AssetImage('assets/images/home/HomeBackGround.png'),
                      fit: BoxFit.fill,
                    ),
                  ),
                  child: Column(
                    children: [
                      SizedBox(
                          height:
                              orientation == Orientation.landscape ? 160 : 50),
                      const WeAssistWidget(),
                      Padding(
                        padding: orientation == Orientation.landscape
                            ? const EdgeInsets.only(top: 200, bottom: 140)
                            : const EdgeInsets.symmetric(vertical: 80),
                        child: Image.asset(
                          'assets/images/home/WebName.png',
                        ),
                      ),
                      const ServicesWidget(),
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
                                for (int i = 0;
                                    i < categoriesModelData.length;
                                    i++)
                                  CategoryCardWidget(
                                    category: categoriesModelData[i],
                                  ),
                              ],
                            ),
                      SizedBox(
                          height:
                              orientation == Orientation.landscape ? 185 : 100),
                      const CaseStudiesWidget(),
                      SizedBox(
                          height:
                              orientation == Orientation.landscape ? 150 : 0),
                      const SignatureWidget(),
                      const GetInTouchWidget(),
                      const SizedBox(height: 50),
                      FooterWidget(footerModel: footerModelData),
                    ],
                  ),
                ),
              ),
            ),
          );
  }
}
