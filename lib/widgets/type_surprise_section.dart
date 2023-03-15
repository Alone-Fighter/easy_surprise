import 'package:easy_surprise/constant.dart';
import 'package:flutter/material.dart';

class TypeSurpriseSection extends StatelessWidget {
  const TypeSurpriseSection({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [
            Image.asset(
              'assets/images/logo_gift.png',
              height: 20,
              width: 20,
            ),
            const SizedBox(
              width: 10,
            ),
            Text(
              'انواع سورپرایز',
              style: txt.textBlack.txtLg.txtBold.txtYekanBakh,
            ),
            const Spacer(),
            Text(
              'نمایش همه',
              style: txt.txtYekanBakh.txtMedium.txtSm.textGrey,
            ),
          ],
        ),
        const SizedBox(
          height: 15,
        ),
        Row(
          children: [
            createContainer('assets/images/ts_1.png', 'جشن تولد'),
            const Spacer(),
            createContainer('assets/images/ts_2.png', 'سالگرد ازدواج'),
          ],
        ),
        const SizedBox(
          height: 15,
        ),
        Row(
          children: [
            createContainer('assets/images/ts_3.png', 'جشن فارق التحصیلی'),
            const Spacer(),
            createContainer('assets/images/ts_4.png', 'هالویین'),
          ],
        ),
        const SizedBox(
          height: 15,
        ),
        Row(
          children: [
            createContainer('assets/images/ts_5.png', 'ولنتاین'),
            const Spacer(),
            createContainer('assets/images/ts_6.png', 'جشن ها سازمانی'),
          ],
        ),
        const SizedBox(
          height: 15,
        ),
      ],
    );
  }
}

Widget createContainer(String image,String title){
  return Container(
    height: 140,
    width: 175,
    padding: const EdgeInsets.only(bottom: 10),
    decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(12)
    ),
    child: Column(
      children: [
        Image.asset(image,fit: BoxFit.fill,height: 95,),
        const Spacer(),
        Text(
          title,
          style: txt.txtYekanBakh.txtMedium.txtLg.textBlack,
        ),
      ],
    ),
  );
}
