import 'package:flutter/material.dart';
import 'package:food_ui/src/common/constants/app_icons.dart';

import '../../../common/constants/app_color.dart';
import '../../../common/constants/app_pictures.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Center(
          child: Padding(
            padding: const EdgeInsets.all(28.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                const Text(
                  "Hello Shambhavi,",
                  style: TextStyle(
                    color: Color(0xFF91C788),
                    fontSize: 25,
                    fontFamily: "Signik,",
                  ),
                ),
                const Text(
                  "Find, track and eat heathy food.",
                  style: TextStyle(
                    color: Color(0xFF7B7B7B),
                    fontSize: 18,
                    fontFamily: "Signik,",
                  ),
                ),
                Card(
                  elevation: 0,
                  color: AppColor.cardColor,
                  child: Row(
                    children: [
                      Expanded(
                        child: Padding(
                          padding: const EdgeInsets.only(left: 20),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              const Row(
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  Text(
                                    "A R T I C L E",
                                    style: TextStyle(
                                      fontFamily: "Signik",
                                      color: AppColor.activeDotColor,
                                      fontSize: 10,
                                      fontWeight: FontWeight.w600,
                                    ),
                                  ),
                                ],
                              ),
                              const Padding(
                                padding: EdgeInsets.only(top: 2),
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    Text(
                                      "The pros and ",
                                      style: TextStyle(
                                        fontFamily: "Signik",
                                        color: AppColor.cardTextColor,
                                        fontSize: 17,
                                        fontWeight: FontWeight.w600,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              const Row(
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  Text(
                                    "cons of fast food.",
                                    style: TextStyle(
                                      fontFamily: "Signik",
                                      color: AppColor.cardTextColor,
                                      fontSize: 17,
                                      fontWeight: FontWeight.w600,
                                    ),
                                  ),
                                ],
                              ),
                              Padding(
                                padding: const EdgeInsets.only(top: 10),
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    ElevatedButton(
                                      style: ElevatedButton.styleFrom(
                                        backgroundColor:
                                            AppColor.activeDotColor,
                                      ),
                                      onPressed: () {},
                                      child: const Center(
                                        child: Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceEvenly,
                                          children: [
                                            Text(
                                              "Read Now",
                                              style: TextStyle(
                                                fontSize: 15,
                                                color: AppColor.white,
                                              ),
                                            ),
                                            Image(
                                              image:
                                                  AssetImage(AppIcons.icPlay),
                                              width: 15,
                                              height: 15,
                                              color: AppColor.white,
                                            ),
                                          ],
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      const Expanded(
                        child: Padding(
                          padding: EdgeInsets.all(25.0),
                          child: Image(
                            image: AssetImage(AppPictures.imgBurgerGroup),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 88,
                  child: DecoratedBox(
                    decoration: const BoxDecoration(
                      borderRadius: BorderRadius.all(
                        Radius.circular(24),
                      ),
                      color: AppColor.stackColor,
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        const Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Padding(
                                  padding: EdgeInsets.only(right: 80.0),
                                  child: Text(
                                    "Track Your",
                                    style: TextStyle(
                                      fontSize: 18,
                                      fontWeight: FontWeight.w600,
                                      color: AppColor.white,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Padding(
                                  padding: EdgeInsets.only(right: 30.0),
                                  child: Text(
                                    "Weekly Progress",
                                    style: TextStyle(
                                      fontSize: 18,
                                      fontWeight: FontWeight.w600,
                                      color: AppColor.white,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 20, bottom: 20),
                          child: ElevatedButton(
                            style: ElevatedButton.styleFrom(
                              backgroundColor: AppColor.white,
                            ),
                            onPressed: () {},
                            child: const Center(
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceEvenly,
                                children: [
                                  Text(
                                    "View Now",
                                    style: TextStyle(
                                      fontSize: 15,
                                      color: AppColor.stackColor,
                                    ),
                                  ),
                                  Image(
                                    image: AssetImage(AppIcons.icPlay),
                                    width: 15,
                                    height: 15,
                                    color: AppColor.stackColor,
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                const Row(
                  children: [
                    Text(
                      "Choose Your Favorites",
                      style: TextStyle(
                        fontSize: 22,
                      ),
                    ),
                  ],
                ),
                const Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Card(
                      color: AppColor.cardColor,
                      child: SizedBox(
                        width: 132,
                        height: 144,
                        child: DecoratedBox(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.all(
                              Radius.circular(42),
                            ),
                          ),
                          child: Center(
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Image(
                                  image: AssetImage(AppPictures.imgStrawberry),
                                  width: 32,
                                  height: 48,
                                ),
                                Padding(
                                  padding: EdgeInsets.only(top: 8.0),
                                  child: Text(
                                    "Fruits",
                                    style: TextStyle(
                                      color: AppColor.cardTextColor,
                                      fontSize: 17,
                                      fontWeight: FontWeight.w400,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                    ),
                    Card(
                      color: AppColor.splashPageText,
                      child: SizedBox(
                        width: 132,
                        height: 144,
                        child: DecoratedBox(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.all(
                              Radius.circular(42),
                            ),
                          ),
                          child: Center(
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Image(
                                  image: AssetImage(AppPictures.imgVegetable),
                                  width: 32,
                                  height: 48,
                                ),
                                Padding(
                                  padding: EdgeInsets.only(top: 8.0),
                                  child: Text(
                                    "Vegetables",
                                    style: TextStyle(
                                      color: AppColor.cardTextColor,
                                      fontSize: 17,
                                      fontWeight: FontWeight.w400,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
