import 'package:flutter/material.dart';

class HeaderWidget extends StatelessWidget {
  const HeaderWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return const Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Expanded(
            child: Row(
          children: [
            CircleAvatar(
              radius: 18,
            ),
            SizedBox(
              width: 10,
            ),
            Text('Hello Anshif')
          ],
        )),
        Expanded(
            child: Row(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Icon(
              Icons.settings,
              color: Colors.grey,
            ),
            Icon(Icons.notifications, color: Colors.grey)
          ],
        ))
      ],
    );
  }
}
