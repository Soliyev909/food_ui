import 'package:flutter/material.dart';
import '../../../common/constants/app_color.dart';

class CustomSegmentedButton extends StatelessWidget {
  const CustomSegmentedButton({
    super.key,
    required this.pageController,
    required this.onFirstPressed,
    required this.onSecondPressed,
  });

  final PageController pageController;
  final void Function() onFirstPressed;
  final void Function() onSecondPressed;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      flex: 2,
      child: Row(
        children: [
          Expanded(
            child: GestureDetector(
              onTap: onFirstPressed,
              child: const SizedBox.expand(
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
                      style: TextStyle(fontSize: 16, color: AppColor.white),
                    ),
                  ),
                ),
              ),
            ),
          ),
          Expanded(
            child: GestureDetector(
              onTap: onSecondPressed,
              child: const SizedBox.expand(
                child: DecoratedBox(
                  decoration: BoxDecoration(
                    color: AppColor.bottoncolor_2,
                    borderRadius: BorderRadius.only(
                      topRight: Radius.circular(16),
                      bottomRight: Radius.circular(16),
                    ),
                  ),
                  child: Center(
                    child: Text(
                      "Recipes",
                      style: TextStyle(
                        fontSize: 16,
                        color: AppColor.activeDotColor,
                      ),
                    ),
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
