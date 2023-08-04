import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:sizer/sizer.dart';
import 'package:web_project1/providers/categories_provider.dart';

import '/screens/home_screen.dart';
import '/screens/services_screen.dart';
import '/screens/portfolio_screen.dart';
import '/screens/contact_us_screen.dart';
import '/providers/app_bar_provider.dart';
import 'screens/project_details_screen.dart';
import 'screens/service_details_screen.dart';

void main() {
  runApp(
    MultiProvider(
      providers: [
        ChangeNotifierProvider(
          create: (_) => CategoriesProvider(),
        ),
      ],
      child: const MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return Sizer(builder: (context, orientation, deviceType) {
      return MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Company Name',
        theme: ThemeData(
          primaryColor: Colors.white,
          textTheme: ThemeData.light().textTheme.copyWith(
              /*titleMedium: const TextStyle(
                  color: Color.fromRGBO(223, 251, 109, 1),
                  fontSize: 64,
                  fontFamily: 'Nexa',
                  fontWeight: FontWeight.w900),*/
              titleSmall: const TextStyle(
                  color: Color.fromRGBO(223, 251, 109, 1),
                  fontSize: 64,
                  fontFamily: 'Nexa',
                  fontWeight: FontWeight.w100)),
          primarySwatch: Colors.grey,
        ),
        routes: {
          '/': (_) => const HomeScreen(),
          ServicesScreen.routeName: (_) => const ServicesScreen(),
          ContactUsScreen.routeName: (_) => const ContactUsScreen(),
          PortfolioScreen.routeName: (_) => const PortfolioScreen(),
          ServiceDetailsScreen.routeName: (_) => const ServiceDetailsScreen(),
          //ProjectsScreen.routeName: (_) => const ProjectsScreen(),
          ProjectDetailsScreen.routeName: (_)=> const ProjectDetailsScreen(),
        },
      );
    });
  }
}
