import 'package:food_ui/src/feature/food_app/models/product_model.dart';

class RecipesModel extends Product {
  final int kcal;
  final String subtitle;

  RecipesModel({
    required this.subtitle,
    required this.kcal,
    required super.name,
    required super.image,
  });
}
