import 'package:flutter/widgets.dart';

abstract class Product {
  final String name;
  final String image;
  final ValueNotifier<bool> isFavourite;

  Product({
    required this.name,
    required this.image,
  }) : isFavourite = ValueNotifier(false);
}
