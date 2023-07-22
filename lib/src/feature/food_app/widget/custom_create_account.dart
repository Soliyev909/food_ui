import 'package:flutter/material.dart';
import 'package:food_ui/src/common/constants/app_color.dart';

import 'custom_button.dart';
import 'custom_richtext.dart';
import 'custom_text.dart';
import 'custom_text_form_fild.dart';
import 'logo_widget.dart';
import 'regiter_page_bottons.dart';

class CustomCreatePage extends StatefulWidget {
  final BoxConstraints constraints;

  const CustomCreatePage({
    Key? key,
    required this.constraints,
  }) : super(key: key);

  @override
  State<CustomCreatePage> createState() => _CustomCreatePageState();
}

class _CustomCreatePageState extends State<CustomCreatePage> {
  GlobalKey<FormState> formKey = GlobalKey<FormState>();

  String? validateEmail(String? value) {
    if (value != null &&
        !RegExp(r"^[a-zA-Z][a-zA-Z0-9]*@[a-zA-Z0-9]+\.[a-zA-Z]{2,6}$")
            .hasMatch(value)) {
      return "Invalid email address!";
    }

    return null;
  }

  String? validatePassword(String? value) {
    if (value != null && !RegExp(r".{8,}").hasMatch(value)) {
      return "Password is too short, it must be at least 8 characters";
    }

    if (value != null && value.contains(" ")) {
      return "Password shouldn't have space";
    }

    if (value != null && !RegExp(r"\d").hasMatch(value)) {
      return "Password must have at least one number";
    }

    if (value != null && !RegExp(r"[a-z]").hasMatch(value)) {
      return "Password must have at least one letter";
    }

    if (value != null && !RegExp(r"[A-Z]").hasMatch(value)) {
      return "Password must have at least one Capital letter";
    }

    return null;
  }

  String? validateFulName(String? value){
    if (value != null && !RegExp(r".{8,}").hasMatch(value)) {
      return "Password is too short, it must be at least 8 characters";
    }
    return null;
  }

  void onPressed(){
    if(formKey.currentState!.validate()){
      // Navigator.push(context, MaterialPageRoute(builder: (context) => A(),));
    }
  }

  @override
  Widget build(BuildContext context) {
    return Form(
      key: formKey,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Expanded(
            flex: 6,
            child: Column(
              children: [
                SizedBox(
                  height: widget.constraints.maxHeight * .03,
                ),
                const LogoWidget(),
                SizedBox(
                  height: widget.constraints.maxHeight * .04,
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 25, right: 25),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const CustomText(text1: "Sign Up", text2: "Welcome to Kcal!"),
                      SizedBox(
                        height: widget.constraints.maxHeight * .05,
                      ),
                      CustomTextFormField(
                        validator: validateFulName,
                        hinText: "Full Name",
                        icon: Icons.person,
                      ),
                      SizedBox(height: widget.constraints.maxHeight * 0.02),
                      CustomTextFormField(
                        validator: validateEmail,
                        hinText: "Email address",
                        icon: Icons.email,
                      ),
                      SizedBox(height: widget.constraints.maxHeight * 0.02),
                      CustomTextFormField(
                        validator: validatePassword,
                        hinText: "Password",
                        icon: Icons.lock,
                        res: true,
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            flex: 4,
            child: Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  const Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Expanded(
                        flex: 3,
                        child: Divider(
                          color: AppColor.grey,
                          height: 1,
                          indent: 20,
                        ),
                      ),
                      Expanded(
                        child: Center(
                          child: Text(
                            "or",
                            style: TextStyle(
                              color: AppColor.grey,
                            ),
                          ),
                        ),
                      ),
                      Expanded(
                        flex: 3,
                        child: Divider(
                          height: 1,
                          endIndent: 20,
                          color: AppColor.grey,
                        ),
                      ),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      CustomRegisterButton(
                        constraints: widget.constraints,
                        iconPath: "assets/images/picture/apple.png",
                      ),
                      SizedBox(width: MediaQuery.of(context).size.width * .03),
                      CustomRegisterButton(
                        constraints: widget.constraints,
                        iconPath: "assets/images/picture/email.png",
                      ),
                    ],
                  ),
                  CustomButton(
                    text: "Sign Up",
                    onPressed: onPressed,
                  ),
                  CustomRichText(
                    onTap: () {},
                    text: "Log In",
                    mainText: "Already Have An Acount? ",
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
