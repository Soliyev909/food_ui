import 'package:flutter/material.dart';

class CustomTextFormField extends StatefulWidget {
  final String hinText;
  final IconData icon;
  final String? Function(String? value) validator;
  final bool res;
  final bool helperText;

  const CustomTextFormField({
    Key? key,
    required this.hinText,
    required this.icon,
    required this.validator,
    this.res = false,
    this.helperText = false,
  }) : super(key: key);

  @override
  State<CustomTextFormField> createState() => _CustomTextFormFieldState();
}

class _CustomTextFormFieldState extends State<CustomTextFormField> {
  late bool res;
  late bool helperText;
  ValueNotifier<bool> isObscure = ValueNotifier<bool>(false);

  @override
  void initState() {
    res = widget.res;
    helperText = widget.helperText;
    super.initState();
  }

  void onTap() {
    isObscure.value = !isObscure.value;
  }

  @override
  Widget build(BuildContext context) {
    return ValueListenableBuilder(
      valueListenable: isObscure,
      builder: (context,value, _) {
        return TextFormField(

          validator: widget.validator,
          obscureText: value,
          decoration: InputDecoration(
            border: const OutlineInputBorder(
              borderRadius: BorderRadius.all(
                Radius.circular(20),
              ),
            ),
            prefixIcon: Icon(widget.icon),
            hintText: widget.hinText,
            counter: res
                ? InkWell(
                    onTap: onTap,
                    child: (value ? const Text("showpassword") : const Text("hid epaswword")),
                  )
                : null,
            helperText: helperText ? "Forgot password" : null,
          ),
        );
      }
    );
  }
}