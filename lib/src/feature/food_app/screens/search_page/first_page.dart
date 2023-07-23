import 'package:flutter/material.dart';

import '../../../../common/constants/app_pictures.dart';
import '../../models/search_page_card_model.dart';
import '../../widget/custom_search_card.dart';

class FirstPage extends StatefulWidget {
  const FirstPage({super.key});

  @override
  State<FirstPage> createState() => _FirstPageState();
}

class _FirstPageState extends State<FirstPage> {
  final List<SearchPageCardModel> searchPageCards = [
    SearchPageCardModel(
        title: "The Sumpkin Secrets",
        subtitle: "The Sumpkin Secrets",
        imagePath: AppPictures.imgPumpkin),
    SearchPageCardModel(
        title: "The Green Secrets",
        subtitle: "The Green Secrets",
        imagePath: AppPictures.imgGreenSalad),
    SearchPageCardModel(
        title: "The Sumpkin Secrets",
        subtitle: "The Sumpkin Secrets",
        imagePath: AppPictures.imgPumpkin),
    SearchPageCardModel(
        title: "The Sumpkin Secrets",
        subtitle: "The Sumpkin Secrets",
        imagePath: AppPictures.imgPumpkin),
    SearchPageCardModel(
        title: "The Sumpkin Secrets",
        subtitle: "The Sumpkin Secrets",
        imagePath: AppPictures.imgPumpkin),
  ];

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.sizeOf(context);
    return Expanded(
      flex: 10,
      child: Column(
        children: [
          buildTitleText("Hot Now"),
          Expanded(
            flex: 2,
            child: FractionallySizedBox(
              heightFactor: 1,
              child: ListView(
                physics: const BouncingScrollPhysics(),
                scrollDirection: Axis.horizontal,
                children: searchPageCards
                    .map(
                      (e) => SearchPageCard(
                        width: size.width * 0.5,
                        title: e.title,
                        subtitle: e.subtitle,
                        imagePath: e.imagePath,
                      ),
                    )
                    .toList(),
              ),
            ),
          ),
          buildTitleText("Trending"),
          const Expanded(
            flex: 2,
            child: SizedBox.expand(
              child: Column(
                children: [
                  Row(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Text(
                        "best vegetable recipes",
                        style: TextStyle(),
                      ),
                    ],
                  )
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  Padding buildTitleText(String text) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 10),
      child: Align(
        alignment: Alignment.centerLeft,
        child: Text(
          text,
          style: const TextStyle(
              fontSize: 22, fontWeight: FontWeight.w400, letterSpacing: -0.24),
        ),
      ),
    );
  }
}
