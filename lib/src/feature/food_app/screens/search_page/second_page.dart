import 'package:flutter/material.dart';
import 'package:food_ui/src/common/constants/app_pictures.dart';
import 'package:food_ui/src/feature/food_app/models/food_model.dart';
import 'package:food_ui/src/feature/food_app/models/recipes_model.dart';
import 'package:food_ui/src/feature/food_app/widget/open_food_widget.dart';

import '../../models/product_model.dart';

class SecondPage extends StatefulWidget {
  const SecondPage({
    super.key,
    required this.suggestions,
    required this.controller,
    required this.favouritesFood,
    required this.favouritesRecipe,
  });

  final TextEditingController controller;
  final ValueNotifier<List<Product>> suggestions;
  final ValueNotifier<List<FoodModel>> favouritesFood;
  final ValueNotifier<List<RecipesModel>> favouritesRecipe;

  @override
  State<SecondPage> createState() => _SecondPageState();
}

class _SecondPageState extends State<SecondPage> {
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: ValueListenableBuilder(
        valueListenable: widget.suggestions,
        builder: (context, value, child) {
          return widget.controller.text.isNotEmpty && value.isEmpty
              ? const SizedBox.expand(
                  child: Center(
                    child: FractionallySizedBox(
                      heightFactor: 0.7,
                      widthFactor: 0.7,
                      child: Image(
                        image: AssetImage(AppPictures.imgSearchPageNotFound),
                        fit: BoxFit.fitWidth,
                      ),
                    ),
                  ),
                )
              : ListView.builder(
                  itemCount: value.length,
                  itemBuilder: (context, index) {
                    return Padding(
                      padding: const EdgeInsets.symmetric(vertical: 8.0),
                      child: ListTile(
                        title: Text(value[index].name),
                        leading: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Image(image: AssetImage(value[index].image)),
                        ),
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => OpenFood(
                                food: value[index],
                                favouritesRecipe: widget.favouritesRecipe,
                                favouritesFood: widget.favouritesFood,

                              ),
                            ),
                          );
                        },
                      ),
                    );
                  },
                );
        },
      ),
    );
  }
}
