import 'package:food_ui/src/feature/food_app/models/product_model.dart';

class RecipesModel extends Product {
  final int kcal;

  RecipesModel({
    required this.kcal,
    required super.name,
    required super.image,
  });
}
