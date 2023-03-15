import 'package:easy_surprise/constant.dart';
import 'package:flutter/material.dart';

class CustomBottom extends StatelessWidget {
  const CustomBottom({Key? key, required this.onPressed, required this.text}) : super(key: key);
  final VoidCallback onPressed;
  final String text;


  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPressed,
    child: Container(
        width: double.infinity,
        height: 64,
        alignment: Alignment.center,
        decoration: BoxDecoration(
            color: kRedColor,
            borderRadius: BorderRadius.circular(8)
        ),
        child: Text(
          text,
          style: txt.txtYekanBakh.txtBold.txtLg.textWhite,
        ),
      ),
    );

  }
}
