import 'package:flutter/material.dart';

import '../models/app_bar_model.dart';

class AppBarWidget extends StatelessWidget {
  final String routeName;
  final AppBarModel appBarModel;

  const AppBarWidget(
      {super.key, required this.routeName, required this.appBarModel});

  Widget landscapePagesButton(
      String title, FontWeight fontWeight, void Function() submit) {
    return TextButton(
      onPressed: submit,
      child: Text(
        title,
        style: TextStyle(
            color: Colors.white, fontSize: 15, fontWeight: fontWeight),
      ),
    );
  }

  @override
  PreferredSizeWidget build(BuildContext context) {
    final standardSize = MediaQuery.of(context).size;
    return MediaQuery.of(context).orientation == Orientation.landscape
        ? AppBar(
            backgroundColor: const Color.fromRGBO(2, 3, 3, 0.15),
            title: Row(
              children: [
                Padding(
                  padding: EdgeInsets.only(
                      left: standardSize.width * .144,
                      right: standardSize.width * .03),
                  child: Row(
                    children: [
                      CircleAvatar(
                        radius: 15,
                        child: Image.network(appBarModel.logoSrc),
                      ),
                      const Padding(
                        padding: EdgeInsets.symmetric(horizontal: 10),
                        child: Text(
                          'Logo',
                          style: TextStyle(fontSize: 15, color: Colors.white),
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  width: standardSize.width * .5,
                  child: Wrap(
                    alignment: WrapAlignment.center,
                    children: [
                      for (int i = 0; i < appBarModel.pageName.length; i++)
                        Padding(
                          padding: EdgeInsets.symmetric(
                              horizontal: standardSize.width * .005),
                          child: landscapePagesButton(
                            appBarModel.pageName[i],
                            routeName == appBarModel.pageRouteName[i]
                                ? FontWeight.bold
                                : FontWeight.normal,
                            () => Navigator.of(context).pushReplacementNamed(
                                appBarModel.pageRouteName[i]),
                          ),
                        ),
                    ],
                  ),
                ),
              ],
            ),
          )
        : AppBar(
            backgroundColor: const Color.fromRGBO(2, 3, 3, 0.15),
            title: Row(
              children: [
                CircleAvatar(
                  radius: 20,
                  child: Image.network(appBarModel.logoSrc),
                ),
                const Padding(
                  padding: EdgeInsets.symmetric(horizontal: 10.0),
                  child: Text(
                    'Logo',
                    style: TextStyle(color: Colors.white),
                  ),
                ),
              ],
            ),
            actions: [
              PopupMenuButton(
                onSelected: (i) => Navigator.of(context)
                    .pushReplacementNamed(appBarModel.pageRouteName[i]),
                color: const Color.fromRGBO(2, 3, 3, 0.15),
                icon: const Icon(Icons.menu, color: Colors.white),
                itemBuilder: (context) {
                  return [
                    for (int i = 0; i < appBarModel.pageName.length; i++)
                      PopupMenuItem(
                        value: i,
                        child: Text(
                          appBarModel.pageName[i],
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 15,
                            fontWeight:
                                routeName == appBarModel.pageRouteName[i]
                                    ? FontWeight.bold
                                    : FontWeight.normal,
                          ),
                        ),
                      ),
                  ];
                },
              ),
            ],
          );
  }
}
