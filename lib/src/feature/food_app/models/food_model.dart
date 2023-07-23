import 'package:flutter/cupertino.dart';

class FoodModel {
  final String name;
  final String image;
  final ValueNotifier<bool> isFavourite;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is FoodModel &&
          runtimeType == other.runtimeType &&
          name == other.name &&
          image == other.image &&
          isFavourite == other.isFavourite;

  @override
  int get hashCode => name.hashCode ^ image.hashCode ^ isFavourite.hashCode;

  FoodModel({
    required this.name,
    required this.image,
  }) : isFavourite = ValueNotifier<bool>(false);
}
