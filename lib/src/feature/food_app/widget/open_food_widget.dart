import 'package:flutter/material.dart';
import 'package:food_ui/src/feature/food_app/models/food_model.dart';

class OpenFood extends StatefulWidget {
  final FoodModel food;
  final ValueNotifier<List<FoodModel>> favourites;

  const OpenFood({super.key, required this.food, required this.favourites});

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
                    if (widget.food.isFavourite.value) {
                      widget.favourites.value.remove(widget.food);
                    } else {
                      widget.favourites.value.add(widget.food);
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
