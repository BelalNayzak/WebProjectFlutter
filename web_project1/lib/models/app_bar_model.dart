import '/screens/contact_us_screen.dart';
import '/screens/portfolio_screen.dart';
import '/screens/services_screen.dart';

Map<String, dynamic> appBarModel = {
  'logoSrc': 'https://cdn-icons-png.flaticon.com/128/2168/2168336.png',
  'pageName': ['Home', 'Services', 'Portfolio', 'Contact Us'],
  'pageRouteName': [
    '/',
    ServicesScreen.routeName,
    PortfolioScreen.routeName,
    ContactUsScreen.routeName
  ],
};

class AppBarModel {
  final String logoSrc;
  final List<String> pageName;
  final List<String> pageRouteName;

  AppBarModel(this.logoSrc, this.pageName, this.pageRouteName);
}

AppBarModel appBarModelData = AppBarModel(appBarModel['logoSrc'],
    appBarModel['pageName'], appBarModel['pageRouteName']);
