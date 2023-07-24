import 'package:flutter/material.dart';
import 'package:food_ui/src/common/constants/app_color.dart';
import 'package:food_ui/src/feature/food_app/models/food_model.dart';
import '../../widget/custom_segmented_button.dart';
import 'food_empty_page.dart';
import 'not_empty_page.dart';

class LikesPage extends StatefulWidget {
  final ValueNotifier<List<FoodModel>> items;

  const LikesPage({
    Key? key,
    required this.items,
  }) : super(key: key);

  @override
  State<LikesPage> createState() => _LikesPageState();
}

class _LikesPageState extends State<LikesPage> {
  late PageController pageController;

  void onFirstPressed() {
    pageController.animateToPage(0,
        duration: const Duration(milliseconds: 200), curve: Curves.linear);
  }

  void onSecondPressed() {
    pageController.animateToPage(1,
        duration: const Duration(milliseconds: 200), curve: Curves.linear);
  }

  @override
  void initState() {
    pageController = PageController();
    super.initState();
  }

  @override
  void deactivate() {
    pageController.dispose();
    super.deactivate();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColor.white,
      appBar: AppBar(
        centerTitle: true,
        title: const Text(
          "Favorites",
          style: TextStyle(fontSize: 12, fontWeight: FontWeight.w500),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 24),
        child: Column(
          children: [
            SizedBox(
              width: MediaQuery.of(context).size.width * .2,
            ),
            CustomSegmentedButton(
              pageController: pageController,
              onFirstPressed: onFirstPressed,
              onSecondPressed: onSecondPressed,
            ),
            const Spacer(),
            Expanded(
              flex: 18,
              child: PageView(
                controller: pageController,
                children: [
                  (widget.items.value.isEmpty)
                      ? const FoodEmptyPage()
                      : FavoritFoodPage(items: widget.items),
                  const Scaffold(
                    backgroundColor: Colors.grey,
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
