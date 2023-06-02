import 'package:flutter/material.dart';

import '../models/footer_model.dart';

import '../screens/services_screen.dart';

class FooterWidget extends StatelessWidget {
  final FooterModel footerModel;

  const FooterWidget({super.key, required this.footerModel});

  @override
  Widget build(BuildContext context) {
    Widget socialLogosButton(
        String logoSrc, void Function() routeNavigationFunction) {
      return CircleAvatar(
        radius: 15,
        backgroundColor: const Color.fromRGBO(18, 18, 18, 1),
        child: InkWell(
            onTap: routeNavigationFunction,
            child: Image.asset(logoSrc, color: Colors.white)),
      );
    }

    Widget informationButton(
        String name, void Function() routeNavigationFunction) {
      return TextButton(
          onPressed: routeNavigationFunction,
          child: Text(
            name,
            style: const TextStyle(fontSize: 16, color: Colors.white),
          ));
    }

    return Positioned(
        bottom: 0,
        left: 0,
        right: 0,
        child: Container(
          height: 400,
          width: 1920,
          color: const Color(0xff121212),
          //padding: const EdgeInsets.only(top: 100),
          child: Row(
            children: [
              Expanded(
                flex: 15,
                child: Column(
                  children: [
                    const Spacer(flex: 1),
                    Expanded(
                      flex: 4,
                      child: Row(
                        children: [
                          const Spacer(flex: 2),
                          Expanded(
                            flex: 6,
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Row(
                                  children: [
                                    CircleAvatar(
                                        radius: 20,
                                        child: Image.network(
                                            footerModel.description.logoSrc)),
                                    const Padding(
                                      padding: EdgeInsets.symmetric(
                                          horizontal: 10.0),
                                      child: Text(
                                        'Logo',
                                        style: TextStyle(color: Colors.white),
                                      ),
                                    )
                                  ],
                                ),
                                const SizedBox(height: 35),
                                Text(
                                  footerModel.description.description,
                                  style: const TextStyle(color: Colors.white),
                                ),
                                const Spacer(),
                                Wrap(
                                  alignment: WrapAlignment.start,
                                  children: [
                                    socialLogosButton(
                                        footerModel
                                            .description.socialSrc.facebook,
                                        () => Navigator.of(context)
                                            .pushReplacementNamed(
                                                ServicesScreen.routeName)),
                                    socialLogosButton(
                                        footerModel
                                            .description.socialSrc.instagram,
                                        () => Navigator.of(context)
                                            .pushReplacementNamed(
                                                ServicesScreen.routeName)),
                                    socialLogosButton(
                                        footerModel
                                            .description.socialSrc.linkedIn,
                                        () => Navigator.of(context)
                                            .pushReplacementNamed(
                                                ServicesScreen.routeName)),
                                    socialLogosButton(
                                        footerModel
                                            .description.socialSrc.twitter,
                                        () => Navigator.of(context)
                                            .pushReplacementNamed(
                                                ServicesScreen.routeName)),
                                  ],
                                ),
                                const Spacer(),
                                Text(
                                  footerModel.description.rightsReserved,
                                  style: const TextStyle(
                                    color: Colors.white,
                                    fontSize: 12,
                                    fontWeight: FontWeight.w200,
                                  ),
                                ),
                                const Spacer(flex: 8),
                              ],
                            ),
                          ),
                          const Spacer(flex: 1),
                          Expanded(
                            flex: 4,
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                const Text(
                                  'Information',
                                  style: TextStyle(
                                      fontSize: 20,
                                      fontWeight: FontWeight.w900,
                                      color: Colors.white),
                                ),
                                const SizedBox(height: 40),
                                for (int i = 0;
                                    i < footerModel.information.pageName.length;
                                    i++)
                                  informationButton(
                                      footerModel.information.pageName[i],
                                      () => Navigator.of(context)
                                          .pushReplacementNamed(footerModel
                                              .information.pageRouteName[i])),
                                const Spacer(
                                  flex: 2,
                                )
                              ],
                            ),
                          ),
                          const Spacer(flex: 1),
                          Expanded(
                            flex: 5,
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                const Text('Contact Us',
                                    style: TextStyle(
                                        fontSize: 20,
                                        fontWeight: FontWeight.w900,
                                        color: Colors.white)),
                                const SizedBox(height: 40),
                                Text(
                                  footerModel.contactUs.address,
                                  style: const TextStyle(
                                    color: Colors.white,
                                    fontSize: 16,
                                  ),
                                ),
                                const Spacer(),
                                Text(
                                  footerModel.contactUs.phoneNumber,
                                  style: const TextStyle(
                                      color: Colors.white,
                                      fontSize: 16,
                                      decoration: TextDecoration.underline),
                                ),
                                const Spacer(),
                                Text(
                                  footerModel.contactUs.email,
                                  style: const TextStyle(
                                    color: Colors.white,
                                    fontSize: 16,
                                  ),
                                ),
                                const Spacer(flex: 15),
                              ],
                            ),
                          ),
                          const Spacer()
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              Expanded(
                  flex: 6,
                  child: Container(
                    color: const Color(0xff1d1d1d),
                  )),
            ],
          ),
        ));
  }
}
