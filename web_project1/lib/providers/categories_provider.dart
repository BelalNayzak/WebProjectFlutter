import 'package:flutter/material.dart';

import '../models/services_models/categories_model.dart';

class CategoriesProvider with ChangeNotifier {
  /*final List<CategoriesModel> categoriesModelData = [
    for (int i = 0; i < categoriesData.length; i++)
      CategoriesModel(
        categoriesData[i]['categoryName'],
        categoriesData[i]['categoryDescription'],
        [
          for (int x = 0; x < categoriesData[i]['categoryServices'].length; x++)
            CategoryService(
                categoriesData[i]['categoryServices'][x]['serviceName'],
                categoriesData[i]['categoryServices'][x]['serviceTools']),
        ],
      ),
  ];*/

  CategoryModel visibleCategoryProvider = categoriesModelData[0];

  void visibleCategoryState(int i) {
    visibleCategoryProvider = categoriesModelData[i];
    notifyListeners();
  }

  CategoryService visibleServiceProvider =
      categoriesModelData[0].categoryServices[0];

  void visibleServiceState(int i, int x) {
    visibleServiceProvider =
        categoriesModelData[i].categoryServices[x];
    notifyListeners();
  }
}
