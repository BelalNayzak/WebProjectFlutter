import 'package:flutter/material.dart';
import 'package:web_project1/constants/font_sizes.dart';

import '../models/footer_model.dart';

import '../screens/services_screen.dart';

class FooterWidget extends StatelessWidget {
  final FooterModel footerModel;

  const FooterWidget({super.key, required this.footerModel});

  @override
  Widget build(BuildContext context) {
    final standardSize = MediaQuery.of(context).size;
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
        String name, double fontSize, void Function() routeNavigationFunction) {
      return InkWell(
          onTap: routeNavigationFunction,
          child: Text(
            name,
            style: TextStyle(fontSize: fontSize, color: Colors.white),
          ));
    }

    return MediaQuery.of(context).orientation == Orientation.landscape
        ? SizedBox(
            height: 400,
            child: Row(
              children: [
                Container(
                  width: standardSize.width * .7,
                  color: const Color(0xff121212),
                  padding: EdgeInsets.only(
                      left: standardSize.width * .18,
                      top: standardSize.width * 0.035),
                  child: Row(
                    children: [
                      SizedBox(
                        width: standardSize.width * .2,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Row(
                              children: [
                                CircleAvatar(
                                    radius: standardSize.width * 0.015,
                                    child: Image.network(
                                        footerModel.description.logoSrc)),
                                Padding(
                                  padding: EdgeInsets.symmetric(
                                      horizontal: standardSize.width * 0.01),
                                  child: Text(
                                    'Logo',
                                    style: TextStyle(
                                        color: Colors.white,
                                        fontSize: standardSize.width * 0.01),
                                  ),
                                )
                              ],
                            ),
                            Padding(
                              padding: EdgeInsets.symmetric(
                                  vertical: standardSize.width * .01),
                              child: Text(
                                footerModel.description.description,
                                style: const TextStyle(color: Colors.white),
                              ),
                            ),
                            Padding(
                              padding: EdgeInsets.symmetric(
                                  vertical: standardSize.width * .005),
                              child: Wrap(
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
                                      footerModel.description.socialSrc.twitter,
                                      () => Navigator.of(context)
                                          .pushReplacementNamed(
                                              ServicesScreen.routeName)),
                                ],
                              ),
                            ),
                            Text(
                              footerModel.description.rightsReserved,
                              style: const TextStyle(
                                color: Colors.white,
                                fontSize: 12,
                                fontWeight: FontWeight.w200,
                              ),
                            ),
                          ],
                        ),
                      ),
                      Container(
                        width: standardSize.width * .15,
                        padding:
                            EdgeInsets.only(left: standardSize.width * .05),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Padding(
                              padding: EdgeInsets.only(
                                  top: standardSize.width * 0.008,
                                  bottom: standardSize.width * 0.018),
                              child: Text(
                                'Information',
                                textAlign: TextAlign.left,
                                style: TextStyle(
                                    fontSize: standardSize.width * .009,
                                    fontWeight: FontWeight.w900,
                                    color: Colors.white),
                              ),
                            ),
                            for (int i = 0;
                                i < footerModel.information.pageName.length;
                                i++)
                              Padding(
                                padding: const EdgeInsets.symmetric(vertical: 5.0),
                                child: informationButton(
                                    footerModel.information.pageName[i],
                                    standardSize.width * 0.01,
                                    () => Navigator.of(context)
                                        .pushReplacementNamed(footerModel
                                            .information.pageRouteName[i])),
                              ),
                          ],
                        ),
                      ),
                      Container(
                        width: standardSize.width * .15,
                        padding:
                            EdgeInsets.only(left: standardSize.width * .025),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Padding(
                              padding: EdgeInsets.only(
                                  top: standardSize.width * 0.007,
                                  bottom: standardSize.width * 0.022),
                              child: Text('Contact Us',
                                  style: TextStyle(
                                      fontSize: standardSize.width * 0.01,
                                      fontWeight: FontWeight.w900,
                                      color: Colors.white)),
                            ),
                            Text(
                              footerModel.contactUs.address,
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: standardSize.width * 0.01,
                              ),
                            ),
                            Padding(
                              padding: EdgeInsets.symmetric(
                                  vertical: standardSize.width * 0.005),
                              child: Text(
                                footerModel.contactUs.phoneNumber,
                                style: TextStyle(
                                    color: Colors.white,
                                    fontSize: standardSize.width * 0.01,
                                    decoration: TextDecoration.underline),
                              ),
                            ),
                            Text(
                              footerModel.contactUs.email,
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: standardSize.width * 0.01,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                  width: standardSize.width * .3,
                  color: const Color(0xff1d1d1d),
                ),
              ],
            ),
          )
        : Container(
            color: const Color(0xff121212),
            margin: const EdgeInsets.only(top: 50),
            padding: EdgeInsets.symmetric(
                horizontal: standardSize.width * .05,
                vertical: standardSize.width * 0.05),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        CircleAvatar(
                            radius: standardSize.width * 0.05,
                            child:
                                Image.network(footerModel.description.logoSrc)),
                        Padding(
                          padding: EdgeInsets.symmetric(
                              horizontal: standardSize.width * 0.01),
                          child: Text(
                            'Logo',
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: standardSize.width * 0.05),
                          ),
                        )
                      ],
                    ),
                    Padding(
                      padding: EdgeInsets.symmetric(
                          vertical: standardSize.width * .05),
                      child: Text(
                        footerModel.description.description,
                        style: const TextStyle(color: Colors.white),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(
                          bottom: standardSize.width * .05),
                      child: Row(
                        children: [
                          socialLogosButton(
                              footerModel.description.socialSrc.facebook,
                              () => Navigator.of(context).pushReplacementNamed(
                                  ServicesScreen.routeName)),
                          socialLogosButton(
                              footerModel.description.socialSrc.instagram,
                              () => Navigator.of(context).pushReplacementNamed(
                                  ServicesScreen.routeName)),
                          socialLogosButton(
                              footerModel.description.socialSrc.linkedIn,
                              () => Navigator.of(context).pushReplacementNamed(
                                  ServicesScreen.routeName)),
                          socialLogosButton(
                              footerModel.description.socialSrc.twitter,
                              () => Navigator.of(context).pushReplacementNamed(
                                  ServicesScreen.routeName)),
                        ],
                      ),
                    ),
                    Text(
                      footerModel.description.rightsReserved,
                      style: const TextStyle(
                        color: Colors.white,
                      ),
                    ),
                  ],
                ),
                Padding(
                  padding:
                      EdgeInsets.symmetric(vertical: standardSize.width * 0.05),
                  child: const Divider(
                    color: Colors.white,
                  ),
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Information',
                      style: TextStyle(
                        fontSize: standardSize.width * .05,
                        fontWeight: FontWeight.w900,
                        color: Colors.white,
                        decoration: TextDecoration.underline,
                      ),
                    ),
                    for (int i = 0;
                        i < footerModel.information.pageName.length;
                        i++)
                      Padding(
                        padding: EdgeInsets.symmetric(
                            vertical: standardSize.width * 0.015),
                        child: informationButton(
                            footerModel.information.pageName[i],
                            standardSize.width * 0.04,
                            () => Navigator.of(context).pushReplacementNamed(
                                footerModel.information.pageRouteName[i])),
                      ),
                  ],
                ),
                Padding(
                  padding: EdgeInsets.symmetric(vertical: standardSize.width * 0.05),
                  child: const Divider(
                    color: Colors.white,
                  ),
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: EdgeInsets.only(
                          top: standardSize.width * 0.007,
                          bottom: standardSize.width * 0.022),
                      child: Text(
                        'Contact Us',
                        style: TextStyle(
                          fontSize: standardSize.width * .05,
                          fontWeight: FontWeight.w900,
                          color: Colors.white,
                          decoration: TextDecoration.underline,
                        ),
                      ),
                    ),
                    Text(
                      footerModel.contactUs.address,
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: standardSize.width * 0.04,
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.symmetric(
                          vertical: standardSize.width * 0.02),
                      child: Text(
                        footerModel.contactUs.phoneNumber,
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: standardSize.width * 0.04,
                            decoration: TextDecoration.underline),
                      ),
                    ),
                    Text(
                      footerModel.contactUs.email,
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: standardSize.width * 0.04,
                      ),
                    ),
                  ],
                ),
              ],
            ),
          );
    /*Container(
      height: 400,
      width: 1920,
      color: const Color(0xff121212).withOpacity(.15),
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
                                  padding:
                                      EdgeInsets.symmetric(horizontal: 10.0),
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
                                    footerModel.description.socialSrc.facebook,
                                    () => Navigator.of(context)
                                        .pushReplacementNamed(
                                            ServicesScreen.routeName)),
                                socialLogosButton(
                                    footerModel.description.socialSrc.instagram,
                                    () => Navigator.of(context)
                                        .pushReplacementNamed(
                                            ServicesScreen.routeName)),
                                socialLogosButton(
                                    footerModel.description.socialSrc.linkedIn,
                                    () => Navigator.of(context)
                                        .pushReplacementNamed(
                                            ServicesScreen.routeName)),
                                socialLogosButton(
                                    footerModel.description.socialSrc.twitter,
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
                            Text(
                              'Information',
                              style: TextStyle(
                                  fontSize: FontSizes.medium,
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
              color: const Color(0xff1d1d1d).withOpacity(.5),
            ),
          ),
        ],
      ),
    );*/
  }
}
