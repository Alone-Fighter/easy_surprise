import 'package:easy_surprise/constant.dart';
import 'package:flutter/material.dart';

class CustomTextField extends StatefulWidget {
  const CustomTextField({Key? key}) : super(key: key);

  @override
  State<CustomTextField> createState() => _CustomTextFieldState();
}

class _CustomTextFieldState extends State<CustomTextField> {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 12),
      margin:
      const EdgeInsets.only(bottom: 10, right: 3, left: 3),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(14),
        color: kBackColor,
      ),
      child: const TextField(
        decoration: InputDecoration(
          border: InputBorder.none,
        ),
      ),
    );
  }
}
