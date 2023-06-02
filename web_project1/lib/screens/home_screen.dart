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
import '/widgets/home_widgets/service_card_widget.dart';
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
          child: Stack(
            children: [
              Image.asset('assets/images/home/HOME-V01.png'),
              Column(
                children: [
                  SizedBox(height: standardSize.width * .15),
                  const WeAssistWidget(),
                  SizedBox(height: standardSize.width * .10),
                  Image.asset(
                    'assets/images/home/WebName.png',
                    color: Colors.black,
                  ),
                  SizedBox(height: standardSize.width * .15),
                  SpanTextWidget(
                    textAlign: TextAlign.center,
                    textsList: [
                      TextSpan(
                        text: 'Services and Solutions ',
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: FontSizes.xLarge,
                            fontWeight: FontWeight.w700),
                      ),
                      TextSpan(
                        text: 'with\nfeatured digital methods',
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: FontSizes.xLarge,
                            fontWeight: FontWeight.w100),
                      ),
                    ],
                  ),
                  const SizedBox(height: 50),
                  /*Expanded(
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
                  ),*/
                  Wrap(
                    alignment: WrapAlignment.center,
                    children: [
                      for (int i = 0;
                          i < serviceCardModelData.serviceName.length;
                          i++)
                        ServiceCardWidget(
                          serviceName: serviceCardModelData.serviceName[i],
                          serviceDescription:
                              serviceCardModelData.serviceDescription[i],
                          serviceRouteName:
                              serviceCardModelData.serviceRouteName[i],
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
    );
  }
}
