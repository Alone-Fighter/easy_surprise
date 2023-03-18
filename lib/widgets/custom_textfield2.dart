import 'dart:io';

import 'package:easy_surprise/constant.dart';
import 'package:flutter/material.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';

class CustomTextField2 extends StatelessWidget {
  final String text;
  final Widget? prefixIcon;
  final Widget? suffixIcon;
  final TextInputType? inputType;
  final String name;
  final TextEditingController? controller;
  final FormFieldValidator<String>? validator;
  final int? maxLine;
  final double height;

  const CustomTextField2({
    super.key,
    required this.text,
    this.prefixIcon,
    this.suffixIcon,
    this.inputType = TextInputType.text,
    this.name = "",
    this.controller,
    this.validator,
    this.maxLine, required this.height,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: height,
        child: TextFormField(
          controller: controller,
          textAlign: TextAlign.right,
          textAlignVertical: TextAlignVertical.center,
          obscureText: inputType == TextInputType.visiblePassword,
          keyboardType: inputType,
          maxLines: maxLine,
          validator: validator,
          decoration: InputDecoration(
            contentPadding: const EdgeInsets. only(top: 10,left: 12,right: 12,bottom: 20),

            enabledBorder: OutlineInputBorder(
              borderSide: BorderSide.none,
                borderRadius: BorderRadius.circular(8)),
            // Set border for focused state
            focusedBorder: OutlineInputBorder(
                borderSide: BorderSide.none,
                borderRadius: BorderRadius.circular(8)),
            errorBorder: OutlineInputBorder(
                borderSide: const BorderSide(
                    width: 1, color: Colors.red),
                borderRadius: BorderRadius.circular(8)),
            disabledBorder: OutlineInputBorder(
                borderSide: const BorderSide(
                    width: 1, color: Colors.red),
                borderRadius: BorderRadius.circular(8)),
            focusedErrorBorder: OutlineInputBorder(
                borderSide: const BorderSide(
                    width: 1, color: Colors.red),
                borderRadius: BorderRadius.circular(8)),
            fillColor: kBackColorProgress,
            filled: true,
            prefixIcon: prefixIcon,
            suffixIcon: suffixIcon,
            hintText: text,
            hintStyle: txt.txtYekanBakh.txtMedium.textGrey1.txtLg,
            border: InputBorder.none,
          ),
        ));
  }
}
