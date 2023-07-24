import 'package:flutter/material.dart';
import 'package:food_ui/src/feature/food_app/models/food_model.dart';
import 'package:food_ui/src/feature/food_app/models/product_model.dart';

import '../models/recipes_model.dart';

class OpenFood extends StatefulWidget {
  final Product food;
  final ValueNotifier<List<FoodModel>> favouritesFood;
  final ValueNotifier<List<RecipesModel>> favouritesRecipe;

  const OpenFood({
    super.key,
    required this.food,
    required this.favouritesFood,
    required this.favouritesRecipe,
  });

  @override
  State<OpenFood> createState() => _OpenFoodState();
}

class _OpenFoodState extends State<OpenFood> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.food.name),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          children: [
            Expanded(
              child: FractionallySizedBox(
                widthFactor: 0.5,
                heightFactor: 0.5,
                child: Image(
                  image: AssetImage(widget.food.image),
                ),
              ),
            ),
            Expanded(
              child: Center(
                child: IconButton(
                  onPressed: () {
                    final bool currentFood = widget.food.isFavourite.value;
                    final Product product = widget.food;

                    if(currentFood) {
                      if(product is FoodModel) {
                        widget.favouritesFood.value.remove(product);
                      } else if (product is RecipesModel) {
                        widget.favouritesRecipe.value.remove(product);
                      }
                    } else {
                      if(product is FoodModel) {
                        widget.favouritesFood.value.add(product);
                      } else if (product is RecipesModel) {
                        widget.favouritesRecipe.value.add(product);
                      }
                    }


                    widget.food.isFavourite.value =
                        !widget.food.isFavourite.value;
                  },
                  icon: ValueListenableBuilder(
                    valueListenable: widget.food.isFavourite,
                    builder: (context, value, child) {
                      return Icon(
                        value ? Icons.favorite : Icons.favorite_outline,
                        color: Colors.red,
                        size: 50,
                      );
                    },
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
