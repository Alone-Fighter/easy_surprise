import 'package:easy_surprise/constant.dart';
import 'package:flutter/material.dart';

class LastSurpriseSection extends StatelessWidget {
  const LastSurpriseSection({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [
            Image.asset(
              'assets/images/logo_surprise.png',
              height: 20,
              width: 20,
            ),
            const SizedBox(
              width: 10,
            ),
            Text(
              'آخرین سوپرایزها',
              style: txt.textBlack.txtLg.txtBold.txtYekanBakh,
            ),
            const Spacer(),
            Text(
              'نمایش همه',
              style: txt.txtYekanBakh.txtMedium.txtSm.textGrey,
            ),
          ],
        ),
        Container(
          width: double.infinity,
          height: 170,
          padding: const EdgeInsets.all(10),
          decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(12)),
          child: Stack(
            children: [
              const Center(
                child: Text(
                    'با ثبت اولیـــن سورپــــرایز خود بــرنده\n ۱۰درصد تخفیف شوید !',
                    textAlign: TextAlign.center),
              ),
              Positioned(
                  left: 0,
                  child: Image.asset(
                    'assets/images/background2.png',
                    fit: BoxFit.cover,
                    height: 100,
                    width: 108,
                    color: kBackColor,
                  ))
            ],
          ),
        ),
      ],
    );
  }
}
