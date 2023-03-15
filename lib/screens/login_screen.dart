import 'package:easy_surprise/constant.dart';
import 'package:easy_surprise/widgets/custom_bottom.dart';
import 'package:easy_surprise/widgets/custom_navigation.dart';
import 'package:easy_surprise/widgets/custom_textfield.dart';
import 'package:flutter/material.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: kRedColor,
        body: Stack(
          children: [
            // background image
            Image.asset('assets/images/login_background.png'),
            Align(
              alignment: Alignment.bottomCenter,
              child: Container(
                width: double.infinity,
                height: 380,
                padding:
                    const EdgeInsets.symmetric(horizontal: 15, vertical: 30),
                decoration: const BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(12),
                        topRight: Radius.circular(12))),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    RichText(
                        textAlign: TextAlign.center,
                        text: TextSpan(
                            style: txt.txtYekanBakh.txtBold.txtLg.textBlack,
                            children: [
                              const TextSpan(
                                text: 'سلام ، به',
                              ),
                              TextSpan(
                                  text: ' ایــــــــزی سورپرایز ',
                                  style: txt.txtBold.txtLg.textRed),
                              const TextSpan(text: 'خوش آمدید')
                            ])),
                    const SizedBox(
                      height: 20,
                    ),
                    Text(
                      'شماره تلفن همراه ',
                      style: txt.txtRegular.txtMd.textBlack,
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    const CustomTextField(),
                    const SizedBox(
                      height: 20,
                    ),
                    Row(
                      children: [
                        SizedBox(
                          width: 18,
                          height: 18,
                          child: Checkbox(
                              activeColor: kRedColor,
                              value: true,
                              onChanged: (val) {}),
                        ),
                        Container(
                          margin: const EdgeInsets.only(top: 10, right: 10),
                          child: Text('شرایط قوانین ',
                              style:
                                  txt.txtYekanBakh.txtRegular.txtMd.txtDotted),
                        ),
                        RichText(
                            textAlign: TextAlign.center,
                            text: TextSpan(
                                style:
                                    txt.txtYekanBakh.txtRegular.txtMd.textBlack,
                                children: const [
                                  TextSpan(
                                    text: 'ایزی سورپرایز را میپزیرم',
                                  ),
                                ])),
                      ],
                    ),
                    const SizedBox(
                      height: 35,
                    ),
                    CustomBottom(
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => const CustomNavigation(),
                            ),
                          );
                        },
                        text: 'مرحله بعد'),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
