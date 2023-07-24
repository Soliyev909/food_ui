import 'package:flutter/material.dart';

import '../../../../common/constants/app_color.dart';
import '../../models/recipes_model.dart';
import '../../widget/custom_recisep.dart';

class NotEmptyRecipasePage extends StatefulWidget {
  final ValueNotifier<List<RecipesModel>> recipes;

  const NotEmptyRecipasePage({
    Key? key,
    required this.recipes,
  }) : super(key: key);

  @override
  State<NotEmptyRecipasePage> createState() => _NotEmptyRecipasePage();
}

class _NotEmptyRecipasePage extends State<NotEmptyRecipasePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColor.white,
      body: ValueListenableBuilder(
        valueListenable: widget.recipes,
        builder: (context,value,child) {
          return Wrap(
            children: List.generate(
              widget.recipes.value.length,
              (index) => RecipesCard(
                recipesModel: widget.recipes.value[index],
              ),
            ),
          );
        }
      ),
    );
  }
}
