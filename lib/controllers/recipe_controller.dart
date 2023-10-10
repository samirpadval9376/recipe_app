import 'dart:developer';

import 'package:flutter/cupertino.dart';
import 'package:recipe_app/helpers/recipe_helper.dart';
import 'package:recipe_app/modals/recipe_modal.dart';

class RecipeController extends ChangeNotifier {
  List<RecipeModal> data = [];
  int index = 0;

  RecipeController() {
    search();
  }

  forward({required int index}) {
    this.index = index;
    log(index.toString());
    notifyListeners();
  }

  back() {
    index--;
    log(index.toString());
    notifyListeners();
  }

  search({String val = "paneer"}) async {
    data = await RecipeHelper.recipeHelper.getRecipes(query: val) ?? [];
    notifyListeners();
    return 0;
  }
}
