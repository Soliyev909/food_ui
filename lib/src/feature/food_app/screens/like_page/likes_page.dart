import 'package:flutter/material.dart';
import 'package:food_ui/src/common/constants/app_color.dart';
import 'package:food_ui/src/feature/food_app/models/food_model.dart';

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
        body: Column(
          children: [
            SizedBox(
              width: MediaQuery.of(context).size.width * .2,
            ),
            Expanded(
              flex: 2,
              child: Container(
                width: 313,
                height: 69,
                child: Row(
                  children: [
                    Expanded(
                      child: GestureDetector(
                        onTap: () {
                          pageController.animateToPage(0,
                              duration: const Duration(milliseconds: 200),
                              curve: Curves.linear);
                        },
                        child: const Expanded(
                          child: DecoratedBox(
                            decoration: BoxDecoration(
                              color: AppColor.activeDotColor,
                              borderRadius: BorderRadius.only(
                                topLeft: Radius.circular(16),
                                bottomLeft: Radius.circular(16),
                              ),
                            ),
                            child: Center(
                                child: Text(
                              "Food",
                              style: TextStyle(
                                  fontSize: 16, color: AppColor.white),
                            )),
                          ),
                        ),
                      ),
                    ),
                    Expanded(
                      child: GestureDetector(
                        onTap: () {
                          pageController.animateToPage(1,
                              duration: const Duration(milliseconds: 200),
                              curve: Curves.linear);
                        },
                        child: const Expanded(
                          child: DecoratedBox(
                            child: Center(
                              child: Text(
                                "Recipes",
                                style: TextStyle(
                                    fontSize: 16,
                                    color: AppColor.activeDotColor),
                              ),
                            ),
                            decoration: BoxDecoration(
                              color: AppColor.bottoncolor_2,
                              borderRadius: BorderRadius.only(
                                topRight: Radius.circular(16),
                                bottomRight: Radius.circular(16),
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            const Spacer(),
            Expanded(
              flex: 18,
              child: PageView(
                controller: pageController,
                children: [
                  (widget.items.value.isEmpty) ? const FoodEmptyPage() : FavoritFoodPage(items: widget.items),
                  const Scaffold(
                    backgroundColor: Colors.grey,
                  ),
                ],
              ),
            ),
          ],
        ));
  }
}
