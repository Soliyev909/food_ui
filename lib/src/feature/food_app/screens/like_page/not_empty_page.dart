import 'package:flutter/material.dart';
import 'package:food_ui/src/common/constants/app_color.dart';
import 'package:food_ui/src/common/constants/app_pictures.dart';
import 'package:food_ui/src/feature/food_app/models/food_model.dart';

class FavoritFoodPage extends StatefulWidget {
  final ValueNotifier<List<FoodModel>> items;

  const FavoritFoodPage({
    Key? key,
    required this.items,
  }) : super(key: key);

  @override
  State<FavoritFoodPage> createState() => _FavoritFoodPage();
}

class _FavoritFoodPage extends State<FavoritFoodPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColor.white,
      body: ValueListenableBuilder(
          valueListenable: widget.items,
          builder: (context, value, child) {
            return Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Wrap(
                spacing: 10,
                runSpacing: 10,
                children: List.generate(value.length+1, (index) {
                  if(index == value.length){
                   return const SizedBox.square(
                     dimension: 96,
                     child: DecoratedBox(
                       decoration: BoxDecoration(
                         color: AppColor.foodColor,
                         borderRadius: BorderRadius.all(
                           Radius.circular(16),
                         ),
                       ),
                       child: Center(
                         child: Image(
                           image: AssetImage(AppPictures.imgPlus),
                           height: 64,
                           width: 64,
                         ),
                       ),
                     ),
                   );
                  }
                  return SizedBox.square(
                    dimension: 96,
                    child: DecoratedBox(
                      decoration: const BoxDecoration(
                        color: AppColor.foodColor,
                        borderRadius: BorderRadius.all(
                          Radius.circular(16),
                        ),
                      ),
                      child: Center(
                        child: Image(
                          image: AssetImage(value[index].image),
                          height: 64,
                          width: 64,
                        ),
                      ),
                    ),
                  );
                }),
              ),
            );
          }),
    );
  }
}
