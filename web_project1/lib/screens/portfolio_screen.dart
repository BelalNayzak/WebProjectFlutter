import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:simple_gradient_text/simple_gradient_text.dart';

import '../models/app_bar_model.dart';
import '../providers/app_bar_provider.dart';
import '../widgets/app_bar_widget.dart';

class PortfolioScreen extends StatelessWidget {
  static const routeName = '/portfolio';

  const PortfolioScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final scrollController = ScrollController();
    return Scaffold(
      backgroundColor: Colors.grey,

      body: Column(
        children: [
           AppBarWidget(routeName: routeName, appBarModel: appBarModelData),
          Expanded(
            child: Scrollbar(
              controller: scrollController,
              child: SingleChildScrollView(
                controller: scrollController,
                child: Container(
                  child: Column(
                    children: [
                      const SizedBox(
                        height: 200,
                      ),
                      Container(
                        margin: EdgeInsets.symmetric(horizontal: 100),
                        child: Row(
                          mainAxisSize: MainAxisSize.min,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Expanded(
                              flex: 3,
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  //SizedBox(height: 20),
                                  RichText(
                                      overflow: TextOverflow.visible,
                                      text: const TextSpan(children: [
                                        TextSpan(
                                            text: 'We assist businesses\nin ',
                                            style: TextStyle(
                                                fontSize: 64,
                                                fontWeight: FontWeight.w900)),
                                        TextSpan(
                                            text:
                                                'building irresistible\nbrands',
                                            style: TextStyle(
                                                fontSize: 64,
                                                fontWeight: FontWeight.w100))
                                      ])),
                                  FilledButton(
                                      onPressed: () {},
                                      child: const Text('VIEW ALL PROJECTS'))
                                ],
                              ),
                            ),
                            Expanded(
                              flex: 2,
                              child: Image.asset(
                                'assets/images/01.png',
                              ),
                            ),
                          ],
                        ),
                      ),
                      const SizedBox(
                        height: 200,
                      ),
                      GradientText(
                        'CREATIVE DIGITAL AGENCY',
                        textAlign: TextAlign.center,
                        style: const TextStyle(
                          fontSize: 150,
                          fontWeight: FontWeight.w900,
                        ),
                        colors: const [
                          Color.fromRGBO(114, 54, 253, 0.66),
                          Color.fromRGBO(37, 191, 253, 0.66)
                        ],
                      ),
                      const SizedBox(
                        height: 200,
                      ),
                      Container(
                        //height: 500,
                        //width: 500,
                        child: Image.asset(
                          'assets/images/01.png',
                          //fit: BoxFit.scaleDown,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
