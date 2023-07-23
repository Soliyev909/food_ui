import 'package:flutter/material.dart';

import '../../../common/constants/app_icons.dart';
import '../../../common/constants/app_pictures.dart';

class ProfilePage extends StatefulWidget {
  const ProfilePage({Key? key}) : super(key: key);

  @override
  State<ProfilePage> createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
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
                    SizedBox(height: 24,width: 24,child: Image(image: AssetImage(AppIcons.icCrown),),),
                  ],
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
