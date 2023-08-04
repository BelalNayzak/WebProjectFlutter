import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'package:web_project1/models/services_models/categories_model.dart';
import 'package:web_project1/providers/categories_provider.dart';

import '../../screens/services_screen.dart';

class CategoryCardWidget extends StatelessWidget {
  final CategoryModel category;

  //final String serviceRouteName;

  const CategoryCardWidget({
    super.key,
    required this.category,
  });

  @override
  Widget build(BuildContext context) {
    final standardSize = MediaQuery.of(context).size;

    return Container(
      height: 245,
      width: 225,
      margin: const EdgeInsets.symmetric(horizontal: 10),
      color: const Color(0xFF19212A),
      child: Stack(
        alignment: Alignment.topLeft,
        children: [
          Positioned(
            top: 0,
            right: 0,
            child: SizedBox(
              width: 60,
              child: Image.asset('assets/images/frame1.png'),
            ),
          ),
          Padding(
            padding:
                const EdgeInsets.symmetric(horizontal: 20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.only(top: 75),
                  child: Text(
                    category.categoryName,
                    style: GoogleFonts.lato(
                      textStyle: const TextStyle(
                        color: Colors.white,
                        fontSize: 15,
                        fontWeight: FontWeight.w800,
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 20),
                  child: Text(
                    category.categoryDescription,
                    maxLines: 2,
                    softWrap: true,
                    overflow: TextOverflow.visible,
                    style: const TextStyle(
                      color: Colors.white,
                      fontSize: 14,
                    ),
                  ),
                ),
                const Padding(
                  padding: EdgeInsets.only(top: 10),
                  child: Divider(thickness: 0.1, color: Colors.grey),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 15),
                  child: InkWell(
                    onTap: () {
                      Navigator.of(context)
                          .pushReplacementNamed(ServicesScreen.routeName);
                      Provider.of<CategoriesProvider>(context, listen: false)
                          .visibleCategoryProvider = category;
                    },
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        const Text(
                          'READ MORE',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 13,
                          ),
                        ),
                        Image.asset('assets/images/frame2.png', width: 30,)
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );

    /*return Container(
      height: 330,
      width: 270,
      margin: EdgeInsets.all(standardSize.width * 0.01),
      color: const Color.fromRGBO(25, 33, 42, 1),
      child: Stack(
        alignment: Alignment.topLeft,
        children: [
          Positioned(
              top: 0,
              right: 0,
              child: SizedBox(
                  width: standardSize.width * 0.06,
                  child: Image.asset('assets/images/frame1.png'))),
          Padding(
            padding:
                EdgeInsets.symmetric(horizontal: standardSize.width * 0.025),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: EdgeInsets.only(top: standardSize.width * 0.05),
                  child: Text(
                    category.categoryName,
                    style: GoogleFonts.lato(
                      textStyle: TextStyle(
                        color: Colors.white,
                        fontSize: standardSize.width * 0.015,
                        fontWeight: FontWeight.w800,
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(top: standardSize.width * 0.03),
                  child: Text(
                    category.categoryDescription,
                    maxLines: 3,
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: standardSize.width * 0.01,
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(top: standardSize.width * 0.03),
                  child: const Divider(thickness: 0.1, color: Colors.grey),
                ),
                Padding(
                  padding: EdgeInsets.only(top: standardSize.width * 0.02),
                  child: InkWell(
                    onTap: () {
                      Navigator.of(context)
                          .pushReplacementNamed(ServicesScreen.routeName);
                      Provider.of<CategoriesProvider>(context, listen: false)
                          .visibleCategoryProvider = category;
                    },
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'READ MORE',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: standardSize.width * 0.01,
                          ),
                        ),
                        SizedBox(
                            width: standardSize.width * 0.025,
                            child: Image.asset('assets/images/frame2.png'))
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );*/

    /*Container(
      height: standardSize.width * 0.25,
      width: standardSize.width * 0.2,
      margin: EdgeInsets.all(standardSize.width * 0.01),
      color: const Color.fromRGBO(25, 33, 42, 1),
      child: Stack(
        alignment: Alignment.topLeft,
        children: [
          Positioned(
              top: 0,
              right: 0,
              child: SizedBox(
                  width: standardSize.width * 0.06,
                  child: Image.asset('assets/images/frame1.png'))),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: standardSize.width * 0.025),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: EdgeInsets.only(top: standardSize.width * 0.05),
                  child: Text(
                    categoryName,
                    style: GoogleFonts.lato(
                      textStyle: TextStyle(
                        color: Colors.white,
                        fontSize: standardSize.width * 0.015,
                        fontWeight: FontWeight.w800,
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(top: standardSize.width * 0.03),
                  child: Text(
                    categoryDescription,
                    maxLines: 3,
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: standardSize.width * 0.01,
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(top: standardSize.width * 0.03),
                  child: const Divider(thickness: 0.1, color: Colors.grey),
                ),
                Padding(
                  padding: EdgeInsets.only(top: standardSize.width * 0.02),
                  child: InkWell(
                    onTap: () {
                      Navigator.of(context).pushReplacementNamed(serviceRouteName);
                    },
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'READ MORE',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: standardSize.width * 0.01,
                          ),
                        ),
                        SizedBox(
                            width: standardSize.width * 0.025,
                            child: Image.asset('assets/images/frame2.png'))
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );*/
  }
}
