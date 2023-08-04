import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../models/services_models/categories_model.dart';
import '../../providers/categories_provider.dart';

class ThirdContainer extends StatelessWidget {
  const ThirdContainer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final orientation = MediaQuery.of(context).orientation;
    final standardSize = MediaQuery.of(context).size;
    final CategoryModel visibleCategory =
        Provider.of<CategoriesProvider>(context).visibleCategoryProvider;
    final CategoryService visibleService =
        Provider.of<CategoriesProvider>(context).visibleServiceProvider;

    return orientation == Orientation.landscape
        ? Container(
            width: double.infinity,
            padding: EdgeInsets.only(top: 50, left: standardSize.width * 0.165),
            child: Text(
              visibleService.serviceName,
              style: const TextStyle(
                  color: Colors.white,
                  fontSize: 25,
                  fontWeight: FontWeight.w900,
                  height: .5),
            ),
          )
        : Container(
            width: double.infinity,
            padding: EdgeInsets.only(
                top: 50, bottom: 5, left: standardSize.width * 0.035),
            child: Row(
              children: [
                Text(
                  visibleCategory.categoryName,
                  style: TextStyle(
                      color: const Color(0xFFECA3EB),
                      fontSize: standardSize.width * .03,
                      fontWeight: FontWeight.w100,
                      letterSpacing: .5),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 5.0),
                  child: Image.asset(
                    'assets/images/portfolio/arrows.png',
                    width: standardSize.width * .03,
                  ),
                ),
                Text(
                  visibleService.serviceName,
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: standardSize.width * .03,
                      fontWeight: FontWeight.w100,
                      letterSpacing: .5),
                ),
              ],
            ),
          );
  }
}
