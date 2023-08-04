import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:web_project1/screens/portfolio_screen.dart';
import 'package:web_project1/widgets/span_text_widget.dart';

import '../models/app_bar_model.dart';
import '../models/footer_model.dart';
import '../models/services_models/categories_model.dart';
import '../providers/categories_provider.dart';
import '../widgets/app_bar_widget.dart';
import '../widgets/footer_widget.dart';

class ServiceDetailsScreen extends StatelessWidget {
  static const routeName = '/service-details';

  const ServiceDetailsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final scrollControllerServiceDetails = ScrollController();
    final standardSize = MediaQuery.of(context).size;

    final CategoryService visibleService =
        Provider.of<CategoriesProvider>(context).visibleServiceProvider;

    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        backgroundColor: const Color.fromRGBO(2, 3, 3, 0.15),
        flexibleSpace:
            AppBarWidget(routeName: routeName, appBarModel: appBarModelData),
      ),
      body: Scrollbar(
        thumbVisibility: true,
        trackVisibility: true,
        controller: scrollControllerServiceDetails,
        child: SingleChildScrollView(
          controller: scrollControllerServiceDetails,
          child: Container(
            decoration: const BoxDecoration(
              image: DecorationImage(
                image: AssetImage('assets/images/service-details/ServiceDetailsBackGround.png'),
                fit: BoxFit.fill,
              ),
            ),
            child: Column(
              children: [
                SizedBox(height: standardSize.width * 0.15),
                Container(
                  height: standardSize.width * 0.55,
                  padding: EdgeInsets.symmetric(
                      horizontal: standardSize.width * 0.005),
                  margin: EdgeInsets.symmetric(
                      horizontal: standardSize.width * 0.15),
                  //color: Colors.white.withOpacity(0.15),
                  child: Column(
                    children: [
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          SizedBox(
                            width: standardSize.width * 0.15,
                            child: SpanTextWidget(
                              textAlign: TextAlign.left,
                              textsList: [
                                TextSpan(
                                  text: "${visibleService.serviceName}\n",
                                  style: TextStyle(
                                    color: Colors.black,
                                    fontSize: standardSize.width * 0.03,
                                    fontFamily: "Kanit",
                                    fontWeight: FontWeight.w700,
                                  ),
                                ),
                                TextSpan(
                                  text: " HOME ",
                                  style: TextStyle(
                                    color: Colors.black,
                                    fontSize: standardSize.width * 0.008,
                                    fontWeight: FontWeight.w800,
                                    letterSpacing: 1,
                                  ),
                                ),
                                TextSpan(
                                  text: "> ",
                                  style: TextStyle(
                                    color: const Color(0xfffecc05),
                                    fontSize: standardSize.width * 0.01,
                                    fontWeight: FontWeight.w800,
                                  ),
                                ),
                                TextSpan(
                                  text: "SERVICE DETAILS",
                                  style: TextStyle(
                                    color: Colors.black,
                                    fontSize: standardSize.width * 0.008,
                                    fontWeight: FontWeight.w800,
                                    letterSpacing: 1,
                                  ),
                                )
                              ],
                            ),
                          ),
                          SizedBox(
                              width: standardSize.width * 0.09,
                              child: Image.asset(
                                  'assets/images/service-details/arrows.png')),
                          Container(
                            margin: EdgeInsets.only(
                                left: standardSize.width * 0.045),
                            padding: EdgeInsets.only(
                                top: standardSize.width * 0.015),
                            width: standardSize.width * 0.4,
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                SpanTextWidget(
                                    textAlign: TextAlign.left,
                                    textsList: [
                                      TextSpan(
                                          text: 'Description\n',
                                          style: TextStyle(
                                              color: Colors.black,
                                              fontSize:
                                                  standardSize.width * 0.018,
                                              fontWeight: FontWeight.w700)),
                                      TextSpan(
                                          text:
                                              visibleService.serviceDescription,
                                          style: TextStyle(
                                              color: Colors.black,
                                              fontSize:
                                                  standardSize.width * 0.015,
                                              height: 1.6))
                                    ]),
                                Padding(
                                  padding: EdgeInsets.only(
                                      top: standardSize.width * 0.05,
                                      bottom: standardSize.width * 0.01),
                                  child: Text(
                                    'Tools',
                                    style: TextStyle(
                                      color: Colors.black,
                                      fontSize: standardSize.width * 0.018,
                                      fontFamily: "Arimo",
                                      fontWeight: FontWeight.w700,
                                    ),
                                  ),
                                ),
                                Row(
                                  children: [
                                    Container(
                                        margin: EdgeInsets.all(
                                            standardSize.width * 0.004),
                                        width: standardSize.width * 0.045,
                                        child: Image.asset(
                                            'assets/images/service-details/Illustrator.png')),
                                    Container(
                                        margin: EdgeInsets.all(
                                            standardSize.width * 0.004),
                                        width: standardSize.width * 0.045,
                                        child: Image.asset(
                                            'assets/images/service-details/Photoshop.png')),
                                    Container(
                                        margin: EdgeInsets.all(
                                            standardSize.width * 0.004),
                                        width: standardSize.width * 0.045,
                                        child: Image.asset(
                                            'assets/images/service-details/CorelDraw.png')),
                                    Container(
                                        margin: EdgeInsets.all(
                                            standardSize.width * 0.004),
                                        width: standardSize.width * 0.045,
                                        child: Image.asset(
                                            'assets/images/service-details/Diamond.png')),
                                    Container(
                                        margin: EdgeInsets.all(
                                            standardSize.width * 0.004),
                                        width: standardSize.width * 0.045,
                                        child: Image.asset(
                                            'assets/images/service-details/Canva.png')),
                                  ],
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                      Padding(
                        padding: EdgeInsets.only(top: standardSize.width * 0.1),
                        child: Row(
                          children: [
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  'Service Outcome',
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: standardSize.width * 0.018,
                                    fontFamily: "Arimo",
                                    fontWeight: FontWeight.w700,
                                  ),
                                ),
                                for (int i = 0;
                                    i < visibleService.serviceOutcome.length;
                                    i++)
                                  Padding(
                                    padding: EdgeInsets.symmetric(
                                        vertical: standardSize.width * 0.005),
                                    child: Row(
                                      children: [
                                        Container(
                                            margin: EdgeInsets.symmetric(
                                                horizontal:
                                                    standardSize.width * 0.005),
                                            width: standardSize.width * 0.009,
                                            child: Image.asset(
                                                'assets/images/service-details/psudo.png')),
                                        Text(
                                          visibleService.serviceOutcome[i],
                                          style: TextStyle(
                                            color: Colors.white,
                                            fontSize:
                                                standardSize.width * 0.011,
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                              ],
                            ),
                            Container(
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(8),
                                color: const Color(0xff0c1427),
                              ),
                              margin: EdgeInsets.only(
                                  left: standardSize.width * 0.05,
                                  top: standardSize.width * 0.015),
                              width: standardSize.width * 0.222,
                              height: standardSize.width * 0.15,
                              child: Column(
                                children: [
                                  Padding(
                                    padding: EdgeInsets.only(
                                        top: standardSize.width * 0.019,
                                        bottom: standardSize.width * 0.015,
                                        left: standardSize.width * 0.02),
                                    child: Row(children: [
                                      Icon(
                                        Icons.account_circle,
                                        size: standardSize.width * 0.02,
                                        color: const Color(0xb2405cff),
                                      ),
                                      Padding(
                                        padding: EdgeInsets.only(
                                            left: standardSize.width * 0.005),
                                        child: Text(
                                          'Company Profile',
                                          style: TextStyle(
                                              color: Colors.white,
                                              fontSize:
                                                  standardSize.width * 0.015,
                                              fontWeight: FontWeight.w700),
                                        ),
                                      ),
                                    ]),
                                  ),
                                  InkWell(
                                    onTap: () {},
                                    child: Container(
                                      color: const Color(0xb2405cff),
                                      width: standardSize.width * 0.18,
                                      height: standardSize.width * 0.03,
                                      child: Row(
                                        children: [
                                          Padding(
                                            padding: EdgeInsets.only(
                                                left:
                                                    standardSize.width * 0.045,
                                                right:
                                                    standardSize.width * 0.04),
                                            child: Text(
                                              'DOWNLOAD PDF',
                                              style: TextStyle(
                                                  color: Colors.white,
                                                  fontSize: standardSize.width *
                                                      0.008,
                                                  fontWeight: FontWeight.w700),
                                            ),
                                          ),
                                          Icon(
                                            Icons.print,
                                            size: standardSize.width * 0.015,
                                            color: Colors.white,
                                          )
                                        ],
                                      ),
                                    ),
                                  ),
                                  InkWell(
                                    onTap: () {},
                                    child: Container(
                                      margin: EdgeInsets.only(
                                          top: standardSize.width * 0.008),
                                      color: const Color(0xb2405cff),
                                      width: standardSize.width * 0.18,
                                      height: standardSize.width * 0.03,
                                      child: Row(
                                        children: [
                                          Padding(
                                            padding: EdgeInsets.only(
                                                left:
                                                    standardSize.width * 0.035,
                                                right:
                                                    standardSize.width * 0.025),
                                            child: Text(
                                              'DOWNLOAD WORD FILE',
                                              style: TextStyle(
                                                  color: Colors.white,
                                                  fontSize: standardSize.width *
                                                      0.008,
                                                  fontWeight: FontWeight.w700),
                                            ),
                                          ),
                                          Icon(
                                            Icons.print,
                                            size: standardSize.width * 0.015,
                                            color: Colors.white,
                                          )
                                        ],
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            )
                          ],
                        ),
                      )
                    ],
                  ),
                ),
                Container(
                  height: standardSize.width * 0.25,
                  margin: EdgeInsets.symmetric(
                      horizontal: standardSize.width * 0.15,
                      vertical: standardSize.width * 0.02),
                  color: Colors.white.withOpacity(0.15),
                  child: Column(
                    children: [
                      SingleChildScrollView(
                        scrollDirection: Axis.horizontal,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Image.asset(
                              'assets/images/service-details/Box1.png',
                              width: standardSize.width * 0.23,
                            ),
                            Image.asset(
                              'assets/images/service-details/Box2.png',
                              width: standardSize.width * 0.23,
                            ),
                            Image.asset(
                              'assets/images/service-details/Box3.png',
                              width: standardSize.width * 0.23,
                            ),
                            Image.asset(
                              'assets/images/service-details/Box3.png',
                              width: standardSize.width * 0.23,
                            ),
                            Image.asset(
                              'assets/images/service-details/Box3.png',
                              width: standardSize.width * 0.23,
                            ),
                            Image.asset(
                              'assets/images/service-details/Box3.png',
                              width: standardSize.width * 0.23,
                            ),
                          ],
                        ),
                      ),
                      Container(
                        width: standardSize.width * 0.09,
                        margin: EdgeInsets.only(left: standardSize.width * 0.6),
                        child: InkWell(
                          onTap: () {
                            Navigator.of(context)
                                .pushNamed(PortfolioScreen.routeName);
                          },
                          child: Row(
                            children: [
                              Text(
                                'SEE MORE ',
                                style: TextStyle(
                                  color: const Color(0xff2baafd),
                                  fontSize: standardSize.width * 0.014,
                                  fontFamily: "Nexa",
                                  fontWeight: FontWeight.w700,
                                ),
                              ),
                              Image.asset(
                                  'assets/images/service-details/Vectors.png',
                                  width: standardSize.width * 0.014)
                            ],
                          ),
                        ),
                      )
                    ],
                  ),
                ),
                Container(
                  height: standardSize.width * 0.4,
                  color: Colors.white.withOpacity(.15),
                  margin: EdgeInsets.only(
                      left: standardSize.width * .125,
                      top: standardSize.width * 0.025),
                  child: Row(
                    children: [
                      Container(
                        width: standardSize.width * 0.5,
                        padding: EdgeInsets.only(
                            left: standardSize.width * 0.14,
                            top: standardSize.width * 0.09),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            SpanTextWidget(
                              textAlign: TextAlign.left,
                              textsList: [
                                TextSpan(
                                  text: 'Have a project\n',
                                  style: TextStyle(
                                      height: 1,
                                      color: Colors.black,
                                      fontSize: standardSize.width * 0.04,
                                      fontWeight: FontWeight.w900),
                                ),
                                TextSpan(
                                  text: 'in mind?',
                                  style: TextStyle(
                                    height: 1,
                                    color: Colors.black,
                                    fontSize: standardSize.width * .04,
                                  ),
                                ),
                              ],
                            ),
                            Padding(
                              padding: EdgeInsets.only(
                                  top: standardSize.width * 0.045,
                                  bottom: standardSize.width * 0.04),
                              child: SpanTextWidget(
                                  textAlign: TextAlign.left,
                                  textsList: [
                                    TextSpan(
                                      text:
                                          'Unique results are produced\nby our unique process.',
                                      style: TextStyle(
                                        height: 1,
                                        color: Colors.black,
                                        fontSize: standardSize.width * 0.02,
                                        fontWeight: FontWeight.w100,
                                      ),
                                    )
                                  ]),
                            ),
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
                                    fontSize: standardSize.width * 0.014,
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      Image.asset(
                        'assets/images/service-details/Arrow.png',
                        width: standardSize.width * 0.265,
                        color: Colors.black,
                      ),
                    ],
                  ),
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
