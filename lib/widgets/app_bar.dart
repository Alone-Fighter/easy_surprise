import 'package:easy_surprise/constant.dart';
import 'package:flutter/material.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 10),
      width: double.infinity,
      height: 68,
      decoration: const BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.only(bottomLeft: Radius.circular(10),bottomRight: Radius.circular(10))
      ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image.asset('assets/images/logo.png',height: 25,width: 22),
          const SizedBox(width: 10,),
          Image.asset('assets/images/easysurprise.png',height: 24,width: 124),
          const Spacer(),
          Image.asset('assets/images/icon_pin.png',height: 15,width: 12,color: kRedColor,),
          const SizedBox(width: 10,),
          Text('آمل',style: txt.txtYekanBakh.txtMedium.txtLg,),
        ],
      ),
    );

  }
}
