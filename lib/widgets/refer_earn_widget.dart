import 'package:flutter/material.dart';

class ReferEarnWidget extends StatelessWidget {
  const ReferEarnWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 60,
      decoration: BoxDecoration(
          borderRadius: const BorderRadius.all(Radius.circular(5)),
          border: Border.all(color: Colors.grey)),
      child: Row(
        children: [
          Expanded(
            flex: 2,
            child: Container(
              height: 40,
              width: 50,
              decoration: const BoxDecoration(
                shape: BoxShape.circle,
                color: Color.fromARGB(255, 232, 179, 197),
              ),
              child: const Icon(
                Icons.volume_down,
                color: Colors.pink,
              ),
            ),
          ),
          const Expanded(
              flex: 6,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Refer & Earn',
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: 20,
                        fontWeight: FontWeight.w500),
                  ),
                  Text(
                    'Get ₹5 bonus for each new user you',
                    style: TextStyle(
                      overflow: TextOverflow.ellipsis,
                      color: Colors.grey,
                      fontSize: 15,
                    ),
                  )
                ],
              )),
          const Expanded(
              flex: 2,
              child: Icon(
                Icons.highlight_remove_outlined,
                color: Colors.grey,
              )),
        ],
      ),
    );
  }
}
