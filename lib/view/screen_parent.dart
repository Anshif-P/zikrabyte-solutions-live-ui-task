import 'package:flutter/material.dart';
import 'package:z_test_ui/view/screen_card.dart';
import 'package:z_test_ui/view/screen_home.dart';

// ignore: must_be_immutable
class ScreenParent extends StatelessWidget {
  ScreenParent({super.key});
  ValueNotifier pageNotifier = ValueNotifier<int>(0);
  final List<Widget> screens = [
    ScreenHome(),
    const ScreenCard(),
    const ScreePerson(),
    const ScreeSetting()
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(pageNotifier: pageNotifier),
      body: ValueListenableBuilder(
          valueListenable: pageNotifier,
          builder: (context, value, child) => screens[pageNotifier.value]),
    );
  }
}

class BottomNavigationBar extends StatelessWidget {
  const BottomNavigationBar({super.key, required this.pageNotifier});
  final ValueNotifier pageNotifier;

  @override
  Widget build(BuildContext context) {
    return ValueListenableBuilder(
        valueListenable: pageNotifier,
        builder: (context, value, child) => SizedBox(
              height: 60,
              child: Row(
                children: [
                  bottomNavigationItem(
                      icon: Icons.home,
                      onTap: () => pageNotifier.value = 0,
                      isSelected: pageNotifier.value == 0),
                  bottomNavigationItem(
                      icon: Icons.card_giftcard_sharp,
                      onTap: () => pageNotifier.value = 1,
                      isSelected: pageNotifier.value == 1),
                  bottomNavigationItem(
                      icon: Icons.person,
                      onTap: () => pageNotifier.value = 2,
                      isSelected: pageNotifier.value == 2),
                  bottomNavigationItem(
                      icon: Icons.widgets,
                      onTap: () => pageNotifier.value = 3,
                      isSelected: pageNotifier.value == 3),
                ],
              ),
            ));
  }

  Expanded bottomNavigationItem(
      {required IconData icon,
      required VoidCallback onTap,
      bool isSelected = false}) {
    return Expanded(
        child: GestureDetector(
      onTap: onTap,
      child: Column(
        children: [
          const SizedBox(
            height: 15,
          ),
          Icon(
            icon,
            color: isSelected ? Colors.pink : Colors.grey,
          ),
        ],
      ),
    ));
  }
}
