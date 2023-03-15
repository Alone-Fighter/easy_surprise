import 'package:easy_surprise/constant.dart';
import 'package:easy_surprise/widgets/app_bar.dart';
import 'package:easy_surprise/widgets/custom_carousel.dart';
import 'package:easy_surprise/widgets/last_surprise_section.dart';
import 'package:easy_surprise/widgets/type_surprise_section.dart';
import 'package:flutter/material.dart';



class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
          backgroundColor: kBackColor,
          body: Stack(
            children: [
              SingleChildScrollView(
                child: Column(
                  children: [
                    const SizedBox(
                      height: 90,
                    ),
                    const CustomCarousel(),
                    Container(
                      padding: const EdgeInsets.symmetric(horizontal: 15),
                      child: Column(
                        children: const [
                          LastSurpriseSection(),
                          SizedBox(
                            height: 25,
                          ),
                          TypeSurpriseSection(),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              const CustomAppBar(),
            ],
          )),
    );
  }
}


