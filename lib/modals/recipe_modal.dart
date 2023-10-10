class RecipeModal {
  String title;
  String ingredients;
  String servings;
  String instructions;

  RecipeModal({
    required this.title,
    required this.ingredients,
    required this.servings,
    required this.instructions,
  });

  factory RecipeModal.fromMap({required Map data}) {
    return RecipeModal(
      title: data['title'],
      ingredients: data['ingredients'],
      servings: data['servings'],
      instructions: data['instructions'],
    );
  }
}
