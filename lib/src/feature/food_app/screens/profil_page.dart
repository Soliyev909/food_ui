import 'package:flutter/material.dart';
import 'package:food_ui/src/common/constants/app_pictures.dart';

import '../../../common/constants/app_icons.dart';


class ProfilePage extends StatelessWidget {
  const ProfilePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: Scaffold(
        body: Column(
          children: [
            Column(
              children: [
                Center(child: Text("Profile")),
                SizedBox(
                  width: 160,
                  height: 160,
                  child: Stack(
                    children: [
                      CircleAvatar(
                        child: Image(
                          image: AssetImage(AppPictures.imgGirl),
                        ),
                      ),
                      SizedBox(height: 24,width: 24,child: Image(image: AssetImage(AppIcons.icCrown))),
                    ],
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}