import 'package:amazon_clone/constants/global_variables.dart';
import 'package:flutter/material.dart';

class CustomTextField extends StatelessWidget {
  TextEditingController? controller;
  String? hintText;
  Widget? prefixIcon;
  Widget? suffixIcon;
  bool secureText;
  Key? textFormFieldKey;
  CustomTextField({
    Key? key,
    required this.controller,
    required this.hintText,
    this.prefixIcon,
    this.suffixIcon,
    required this.secureText,
    this.textFormFieldKey,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Key textFormFieldKey = GlobalKey<FormState>();
    return TextFormField(
      controller: controller,
      obscureText: secureText,
      key: textFormFieldKey,
      decoration: InputDecoration(
        hintText: hintText,
        prefixIcon: prefixIcon,
        suffixIcon: suffixIcon,
        border: const OutlineInputBorder(
          borderSide: BorderSide(
            color: GlobalVariables.secondaryColor,
          ),
        ),
        enabledBorder: const OutlineInputBorder(
          borderSide: BorderSide(
            color: GlobalVariables.secondaryColor,
          ),
        ),
      ),
      validator: (value) {
        if (value == null || value.isEmpty) {
          return 'Please Enter $hintText';
        }
        return null;
      },
    );
  }
}
