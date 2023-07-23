import 'package:flutter/material.dart';

import '../../../common/constants/app_color.dart';
import '../../../common/constants/app_icons.dart';
import '../../../common/constants/app_pictures.dart';
import '../widget/custom_list_tile.dart';

class ProfilePage extends StatefulWidget {
  const ProfilePage({Key? key}) : super(key: key);

  @override
  State<ProfilePage> createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  List<Widget> items = [
    CustomListTile(
      title: "Edit Profile",
      leadingIconPath: AppIcons.icProfile,
    ),
    CustomListTile(
      title: "Renew Plans",
      leadingIconPath: AppIcons.icStar,
    ),
    CustomListTile(
      title: "Settings",
      leadingIconPath: AppIcons.icSetting,
    ),
    CustomListTile(
      title: "Terms & Privacy Policy",
      leadingIconPath: AppIcons.icPaper,
    ),
    CustomListTile(
      title: "Log Out",
      leadingIconPath: AppIcons.icLogout,
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColor.white,
      body: Padding(
        padding: const EdgeInsets.only(left: 25, right: 25, top: 50),
        child: ListView(
          children: [
            const Center(
              child: Text(
                "Profile",
                style: TextStyle(fontSize: 12, fontWeight: FontWeight.w500),
              ),
            ),
            SizedBox(height: MediaQuery.of(context).size.height * .04),
            Center(
              child: Stack(
                alignment: Alignment.bottomRight,
                children: [
                  const SizedBox(
                    width: 160,
                    height: 160,
                    child: CircleAvatar(
                      child: Image(
                        image: AssetImage(AppPictures.imgGirl),
                      ),
                    ),
                  ),
                  Positioned(
                    bottom: 7,
                    right: 15,
                    child: SizedBox.square(
                      dimension: 24,
                      child: DecoratedBox(
                        decoration: BoxDecoration(
                          color: AppColor.activeDotColor,
                          shape: BoxShape.circle,
                          border: Border.all(
                            width: 2.5,
                            color: AppColor.white,
                            strokeAlign: BorderSide.strokeAlignOutside,
                          ),
                        ),
                        child: const Center(
                          child: Image(
                            image: AssetImage(AppIcons.icCrown),
                            height: 8,
                            width: 12,
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: MediaQuery.of(context).size.height * .02),
            const Center(
              child: Text(
                "Shambhavi Mishra",
                style: TextStyle(
                  fontWeight: FontWeight.w600,
                  fontSize: 25,
                ),
              ),
            ),
            const Center(
              child: Text(
                "Food Blogger",
                style: TextStyle(
                  fontWeight: FontWeight.w400,
                  fontSize: 16,
                  color: AppColor.textColor,
                ),
              ),
            ),
            Column(
              children: List.generate(items.length, (index) {
                if (index == 3) {
                  return Column(
                    children: [
                      const Divider(
                        color: Colors.black26,
                        indent: 5,
                        endIndent: 5,
                      ),
                      items[index],
                    ],
                  );
                } else {
                  return items[index];
                }
              }),
            ),
          ],
        ),
      ),
    );
  }
}
