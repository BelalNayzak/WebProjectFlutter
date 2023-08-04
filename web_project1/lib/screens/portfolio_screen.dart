import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:web_project1/models/services_models/categories_model.dart';
import 'package:web_project1/providers/categories_provider.dart';
import 'package:web_project1/widgets/portfolio_widgets/first_container.dart';

import '../models/app_bar_model.dart';
import '../models/footer_model.dart';
import '../widgets/app_bar_widget.dart';
import '../widgets/footer_widget.dart';
import '../widgets/home_widgets/get_in_touch_widget.dart';
import '../widgets/portfolio_widgets/second_container.dart';
import '../widgets/portfolio_widgets/third_container.dart';
import '../widgets/span_text_widget.dart';
import 'project_details_screen.dart';

class PortfolioScreen extends StatelessWidget {
  static const routeName = '/portfolio';

  const PortfolioScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final scrollControllerProjectsScreen = ScrollController();
    final standardSize = MediaQuery.of(context).size;
    final CategoryModel visibleCategory =
        Provider.of<CategoriesProvider>(context).visibleCategoryProvider;

    Widget categoriesList() {
      return Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 8.0),
            child: InkWell(
              onTap: () {},
              child: const Text(
                'All',
                style: TextStyle(color: Colors.white),
              ),
            ),
          ),
          for (int i = 0; i < categoriesModelData.length; i++)
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 8.0),
              child: PopupMenuButton(
                itemBuilder: (ctx) {
                  return [
                    for (int x = 0;
                        x < categoriesModelData[i].categoryServices.length;
                        x++)
                      PopupMenuItem(
                        onTap: () {
                          Provider.of<CategoriesProvider>(context,
                                  listen: false)
                              .visibleCategoryState(i);
                          Provider.of<CategoriesProvider>(context,
                                  listen: false)
                              .visibleServiceState(i, x);
                        },
                        child: Text(
                          categoriesModelData[i]
                              .categoryServices[x]
                              .serviceName,
                          style: const TextStyle(color: Colors.white),
                        ),
                      ),
                  ];
                },
                color: const Color.fromRGBO(2, 3, 3, 1),
                offset: const Offset(0, 25),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Row(
                  children: [
                    Text(
                      categoriesModelData[i].categoryName,
                      style: TextStyle(
                          color: Colors.white,
                          fontWeight: visibleCategory.categoryName ==
                                  categoriesModelData[i].categoryName
                              ? FontWeight.bold
                              : FontWeight.normal),
                    ),
                    const Icon(
                      Icons.arrow_drop_down,
                      opticalSize: 50,
                    ),
                  ],
                ),
              ),
            ),
        ],
      );
    }

    ScrollController scrollControllerPortfolio = ScrollController();
    Orientation orientation = MediaQuery.of(context).orientation;

    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        backgroundColor: const Color.fromRGBO(2, 3, 3, 0.15),
        flexibleSpace: AppBarWidget(
            routeName: PortfolioScreen.routeName, appBarModel: appBarModelData),
      ),
      body: Scrollbar(
        thumbVisibility: true,
        trackVisibility: true,
        controller: scrollControllerProjectsScreen,
        child: SingleChildScrollView(
          controller: scrollControllerProjectsScreen,
          child: Container(
            decoration: const BoxDecoration(
              image: DecorationImage(
                image: AssetImage('assets/images/portfolio/PortfolioBackGround.png'),
                fit: BoxFit.fill,
              ),
            ),
            child: Column(
              children: [
                SizedBox(
                    height: orientation == Orientation.landscape ? 200 : 100),
                const FirstContainer(),
                Padding(
                  padding: orientation == Orientation.landscape
                      ? EdgeInsets.only(
                          left: standardSize.width * 0.15,
                          right: standardSize.width * 0.25,
                          top: 15,
                          bottom: 15)
                      : EdgeInsets.symmetric(
                          horizontal: standardSize.width * .02, vertical: 20),
                  child: Image.asset(
                    'assets/images/portfolio/Our work.png',
                  ),
                ),
                const SecondContainer(),
                orientation == Orientation.landscape
                    ? categoriesList()
                    : Scrollbar(
                        controller: scrollControllerPortfolio =
                            ScrollController(),
                        thumbVisibility: true,
                        trackVisibility: true,
                        child: Container(
                          color: Colors.black.withOpacity(.5),
                          width: double.infinity,
                          height: 50,
                          child: SingleChildScrollView(
                              controller: scrollControllerPortfolio,
                              scrollDirection: Axis.horizontal,
                              child: categoriesList()),
                        ),
                      ),
                const ThirdContainer(),
                orientation == Orientation.landscape
                    ? Container(
                        height: standardSize.width * 0.65,
                        margin: EdgeInsets.symmetric(
                            horizontal: standardSize.width * 0.15),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Column(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                InkWell(
                                  onTap: () {
                                    Navigator.of(context).pushNamed(
                                        ProjectDetailsScreen.routeName);
                                  },
                                  child: Image.asset(
                                    'assets/images/portfolio/Project1.png',
                                    width: standardSize.width * 0.22,
                                  ),
                                ),
                                InkWell(
                                  onTap: () {
                                    Navigator.of(context).pushNamed(
                                        ProjectDetailsScreen.routeName);
                                  },
                                  child: Image.asset(
                                    'assets/images/portfolio/Project2.png',
                                    width: standardSize.width * 0.22,
                                  ),
                                ),
                              ],
                            ),
                            Column(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                InkWell(
                                  onTap: () {
                                    Navigator.of(context).pushNamed(
                                        ProjectDetailsScreen.routeName);
                                  },
                                  child: Image.asset(
                                    'assets/images/portfolio/Project3.png',
                                    width: standardSize.width * 0.22,
                                  ),
                                ),
                                InkWell(
                                  onTap: () {
                                    Navigator.of(context).pushNamed(
                                        ProjectDetailsScreen.routeName);
                                  },
                                  child: Image.asset(
                                    'assets/images/portfolio/Project4.png',
                                    width: standardSize.width * 0.22,
                                  ),
                                ),
                              ],
                            ),
                            Column(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                InkWell(
                                  onTap: () {
                                    Navigator.of(context).pushNamed(
                                        ProjectDetailsScreen.routeName);
                                  },
                                  child: Image.asset(
                                    'assets/images/portfolio/Project5.png',
                                    width: standardSize.width * 0.22,
                                  ),
                                ),
                                InkWell(
                                  onTap: () {
                                    Navigator.of(context).pushNamed(
                                        ProjectDetailsScreen.routeName);
                                  },
                                  child: Image.asset(
                                    'assets/images/portfolio/Project6.png',
                                    width: standardSize.width * 0.22,
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      )
                    : Column(
                        children: [
                          InkWell(
                            onTap: () {
                              Navigator.of(context)
                                  .pushNamed(ProjectDetailsScreen.routeName);
                            },
                            child: Container(
                              margin: const EdgeInsets.symmetric(vertical: 5),
                              width: standardSize.width * .93,
                              height: standardSize.width * .63,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(15),
                                image: const DecorationImage(
                                    image: AssetImage(
                                        'assets/images/portfolio/Project1.png'),
                                    fit: BoxFit.fill),
                              ),
                            ),
                          ),
                          InkWell(
                            onTap: () {
                              Navigator.of(context)
                                  .pushNamed(ProjectDetailsScreen.routeName);
                            },
                            child: Container(
                              margin: const EdgeInsets.symmetric(vertical: 5),
                              width: standardSize.width * .93,
                              height: standardSize.width * .63,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(15),
                                image: const DecorationImage(
                                    image: AssetImage(
                                        'assets/images/portfolio/Project1.png'),
                                    fit: BoxFit.fill),
                              ),
                            ),
                          ),
                          InkWell(
                            onTap: () {
                              Navigator.of(context)
                                  .pushNamed(ProjectDetailsScreen.routeName);
                            },
                            child: Container(
                              margin: const EdgeInsets.symmetric(vertical: 5),
                              width: standardSize.width * .93,
                              height: standardSize.width * .63,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(15),
                                image: const DecorationImage(
                                    image: AssetImage(
                                        'assets/images/portfolio/Project1.png'),
                                    fit: BoxFit.fill),
                              ),
                            ),
                          ),
                          InkWell(
                            onTap: () {
                              Navigator.of(context)
                                  .pushNamed(ProjectDetailsScreen.routeName);
                            },
                            child: Container(
                              margin: const EdgeInsets.symmetric(vertical: 5),
                              width: standardSize.width * .93,
                              height: standardSize.width * .63,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(15),
                                image: const DecorationImage(
                                    image: AssetImage(
                                        'assets/images/portfolio/Project1.png'),
                                    fit: BoxFit.fill),
                              ),
                            ),
                          ),
                          InkWell(
                            onTap: () {
                              Navigator.of(context)
                                  .pushNamed(ProjectDetailsScreen.routeName);
                            },
                            child: Container(
                              margin: const EdgeInsets.symmetric(vertical: 5),
                              width: standardSize.width * .93,
                              height: standardSize.width * .63,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(15),
                                image: const DecorationImage(
                                    image: AssetImage(
                                        'assets/images/portfolio/Project1.png'),
                                    fit: BoxFit.fill),
                              ),
                            ),
                          ),
                        ],
                      ),
                const GetInTouchWidget(),
                FooterWidget(footerModel: footerModelData),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
