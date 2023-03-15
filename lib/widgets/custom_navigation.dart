import 'package:easy_surprise/screens/home_screen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:stylish_bottom_bar/model/bar_items.dart';
import 'package:stylish_bottom_bar/stylish_bottom_bar.dart';

// custom navigation with stylish_bottom_bar package

class CustomNavigation extends StatefulWidget {
  const CustomNavigation({
    Key? key,
  }) : super(key: key);

  @override
  State<CustomNavigation> createState() => _CustomNavigationState();
}

class _CustomNavigationState extends State<CustomNavigation> {
  dynamic selected = 0;
  PageController controller = PageController();

  @override
  void initState() {
    controller = PageController(initialPage: 0);
    super.initState();
  }

  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBody: true,
      bottomNavigationBar: StylishBottomBar(
        items: [
          BottomBarItem(
              icon: const Icon(
                Icons.house_outlined,
              ),
              selectedIcon: const Icon(Icons.house_rounded),
              selectedColor: Colors.red,
              backgroundColor: Colors.tealAccent,
              title: const Text('')),
          BottomBarItem(
              icon: const Icon(
                Icons.style_outlined,
              ),
              selectedIcon: const Icon(
                Icons.style,
              ),
              backgroundColor: Colors.amber,
              selectedColor: Colors.deepOrangeAccent,
              title: const Text('')),
          BottomBarItem(
              icon: const Icon(Icons.notifications_none_outlined),
              selectedIcon: const Icon(Icons.notifications),
              selectedColor: Colors.green,
              backgroundColor: Colors.lightGreenAccent,
              title: const Text('')),
          BottomBarItem(
              icon: const Icon(
                Icons.person_outline,
              ),
              selectedIcon: const Icon(
                Icons.person,
              ),
              backgroundColor: Colors.purpleAccent,
              selectedColor: Colors.deepPurple,
              title: const Text('')),
        ],
        hasNotch: true,
        fabLocation: StylishBarFabLocation.center,
        currentIndex: selected ?? 3,
        onTap: (index) {
          controller.jumpToPage(index);
          setState(() {
            selected = index;
          });
        },
        option: AnimatedBarOptions(
          // iconSize: 32,
          barAnimation: BarAnimation.blink,
          iconStyle: IconStyle.Default,
          // opacity: 0.3,
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        backgroundColor: Colors.red,
        child: const Icon(
          CupertinoIcons.plus,
          color: Colors.white,
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      body: SafeArea(
        child: PageView(
          controller: controller,
          physics: const NeverScrollableScrollPhysics(),
          onPageChanged: (idx) {
            setState(() {
              selected = idx;
            });
          },
          children: const [
            HomeScreen(),
            Center(child: Text('test')),
            Center(child: Text('test')),
            Center(child: Text('test')),
          ],
        ),
      ),
    );
  }
}
