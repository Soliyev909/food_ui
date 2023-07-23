import 'package:flutter/material.dart';

import '../../../common/constants/app_color.dart';
class CustomButtonCamera extends StatelessWidget {
  final String image;

  const CustomButtonCamera({
    required this.image,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 48,
      height: 48,
      child: CircleAvatar(
        foregroundColor: AppColor.mainColor,
        backgroundColor: AppColor.mainColor,
        child: Image(
          width: 24,
          height: 24,
          image: AssetImage(image),
        ),
      ),
    );
  }
}
