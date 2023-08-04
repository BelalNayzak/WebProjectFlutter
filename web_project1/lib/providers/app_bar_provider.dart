import 'package:flutter/material.dart';

import '../screens/contact_us_screen.dart';
import '../screens/portfolio_screen.dart';
import '../screens/services_screen.dart';

class AppBarProvider with ChangeNotifier {
  Map<String, FontWeight> localFontWeightState = {};
  Map<String, FontWeight> fontWeightState = {};

  Widget appBarButton(
      String title, FontWeight? fontWeightState, void Function() submit) {
    return TextButton(
      onPressed: submit,
      child: Text(
        title,
        style: TextStyle(color: Colors.white, fontWeight: fontWeightState),
      ),
    );
  }

  PreferredSizeWidget appBarWidget(BuildContext context) {
    fontWeightState = localFontWeightState;
    return AppBar(
      backgroundColor: const Color.fromRGBO(2, 3, 3, 0.15),
      centerTitle: true,
      title: Row(
        children: [
          const Expanded(child: CircleAvatar()),
          Expanded(
            flex: 2,
            child: Wrap(
              alignment: WrapAlignment.center,
              children: [
                appBarButton('Home', fontWeightState['home'], () {
                  Navigator.of(context).pushReplacementNamed('/');
                  localFontWeightState = {
                    'home': FontWeight.normal,
                    'services': FontWeight.bold,
                    'portfolio': FontWeight.normal,
                    'contact-us': FontWeight.normal,
                  };
                  notifyListeners();
                }),
                appBarButton('Services', fontWeightState['Services'], () {
                  localFontWeightState = {
                    'home': FontWeight.normal,
                    'services': FontWeight.normal,
                    'portfolio': FontWeight.normal,
                    'contact-us': FontWeight.normal,
                  };
                  Navigator.of(context)
                      .pushReplacementNamed(ServicesScreen.routeName);
                  notifyListeners();
                }),
                appBarButton('Portfolio', fontWeightState['Portfolio'], () {
                  Navigator.of(context)
                      .pushReplacementNamed(PortfolioScreen.routeName);
                  localFontWeightState = {
                    'home': FontWeight.normal,
                    'services': FontWeight.normal,
                    'portfolio': FontWeight.bold,
                    'contact-us': FontWeight.normal,
                  };
                  notifyListeners();
                }),
                appBarButton('Contact us', fontWeightState['Contact us'], () {
                  Navigator.of(context)
                      .pushReplacementNamed(ContactUsScreen.routeName);
                  localFontWeightState = {
                    'home': FontWeight.normal,
                    'services': FontWeight.normal,
                    'portfolio': FontWeight.normal,
                    'contact-us': FontWeight.bold,
                  };
                  notifyListeners();
                }),
              ],
            ),
          )
        ],
      ),
    );
  }
}