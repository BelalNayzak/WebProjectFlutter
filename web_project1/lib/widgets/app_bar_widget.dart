import 'package:flutter/material.dart';

import '../models/app_bar_model.dart';

class AppBarWidget extends StatelessWidget {
  final String routeName;
  final AppBarModel appBarModel;

  const AppBarWidget(
      {super.key, required this.routeName, required this.appBarModel});

  Widget pagesButton(
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
    return standardSize.width > 750
        ? AppBar(
            backgroundColor: const Color.fromRGBO(2, 3, 3, 0.15),
            title: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Padding(
                  padding: EdgeInsets.symmetric(
                      horizontal: standardSize.width * .15),
                  child: Row(
                    children: [
                      CircleAvatar(
                          radius: 20,
                          child: Image.network(appBarModel.logoSrc)),
                      const Padding(
                        padding: EdgeInsets.symmetric(horizontal: 10.0),
                        child: Text(
                          'Logo',
                          style: TextStyle(color: Colors.white),
                        ),
                      )
                    ],
                  ),
                ),
                Row(
                  children: [
                    for (int i = 0; i < appBarModel.pageName.length; i++)
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 8),
                        child: pagesButton(
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
              ],
            ),
          )
        : AppBar(
            backgroundColor: const Color.fromRGBO(2, 3, 3, 0.15),
            title: Row(
              children: [
                CircleAvatar(
                    radius: 20, child: Image.network(appBarModel.logoSrc)),
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
                  color: const Color.fromRGBO(2, 3, 3, 0.15),
                  icon: const Icon(Icons.menu, color: Colors.white),
                  itemBuilder: (context) {
                    return [
                      for (int i = 0; i < appBarModel.pageName.length; i++)
                        PopupMenuItem(
                          child: pagesButton(
                            appBarModel.pageName[i],
                            routeName == appBarModel.pageRouteName[i]
                                ? FontWeight.bold
                                : FontWeight.normal,
                            () => Navigator.of(context).pushReplacementNamed(
                                appBarModel.pageRouteName[i]),
                          ),
                        ),
                    ];
                  }),
            ],
          );
  }
}
