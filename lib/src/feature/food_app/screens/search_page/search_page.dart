//TODO: Murodjon searchpage;

import 'package:flutter/material.dart';
import 'first_page.dart';
import 'second_page.dart';

class SearchPage extends StatefulWidget {
  const SearchPage({super.key});

  @override
  State<SearchPage> createState() => _SearchPageState();
}

class _SearchPageState extends State<SearchPage> {
  late PageController _pageController;
  late FocusNode secondPageFocus;

  @override
  void initState() {
    super.initState();
    _pageController = PageController(initialPage: 0);
    secondPageFocus = FocusNode();
  }

  @override
  void dispose() {
    super.dispose();
    _pageController.dispose();
    secondPageFocus.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: SafeArea(
        child: SizedBox.expand(
          child: PageView(
            controller: _pageController,
            children: [
              FirstPage(onFirstTap: onFirstTap),
              SecondPage(
                  onBackPressed: onBackPressed, focusNode: secondPageFocus),
            ],
          ),
        ),
      ),
    );
  }

  void onFirstTap() {
    _pageController.nextPage(
        duration: const Duration(milliseconds: 500), curve: Curves.easeInOut);
  }

  void onBackPressed() {
    _pageController.previousPage(
        duration: const Duration(milliseconds: 500), curve: Curves.easeInOut);
    secondPageFocus.unfocus();
  }
}

