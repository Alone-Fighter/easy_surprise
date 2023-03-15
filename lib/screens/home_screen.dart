import 'package:carousel_slider/carousel_slider.dart';
import 'package:easy_surprise/constant.dart';
import 'package:easy_surprise/widgets/app_bar.dart';
import 'package:easy_surprise/widgets/custom_carousel.dart';
import 'package:easy_surprise/widgets/last_surprise_section.dart';
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
          body: Column(
            children: [
              const CustomAppBar(),
              const SizedBox(
                height: 25,
              ),
              const CustomCarousel(),
              Container(
                padding: const EdgeInsets.symmetric(horizontal: 15),
                child: Column(
                  children: const [
                    LastSurpriseSection(),
                  ],
                ),
              ),
            ],
          )),
    );
  }
}


