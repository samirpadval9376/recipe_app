import 'dart:convert';
import 'dart:developer';

import 'package:http/http.dart' as http;
import 'package:recipe_app/modals/recipe_modal.dart';

class RecipeHelper {
  RecipeHelper._();

  static final RecipeHelper recipeHelper = RecipeHelper._();

  Future<List<RecipeModal>?> getRecipes({String query = "paneer"}) async {
    String recipeApi = "https://api.api-ninjas.com/v1/recipe?query=$query";

    http.Response response = await http.get(
      Uri.parse(recipeApi),
      headers: {'X-Api-Key': 'fLulbS/eIS1ACumkrbObjA==IGiJ3yTRnpnvAjIW'},
    );

    if (response.statusCode == 200) {
      List data = jsonDecode(response.body);

      log(response.body);

      List<RecipeModal> allRecipes =
          data.map((e) => RecipeModal.fromMap(data: e)).toList();

      return allRecipes;
    } else {
      return null;
    }
  }
}
