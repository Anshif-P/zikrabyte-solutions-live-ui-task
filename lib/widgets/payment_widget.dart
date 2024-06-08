import 'package:flutter/material.dart';

class PaymentWidget extends StatelessWidget {
  final List<String> paymentStr = [
    'Air Time',
    'Data',
    'Tv',
    'Internet',
    'Electricity',
    'Deals',
    'Games',
    'More'
  ];

  final List<IconData> paymentIcons = [
    Icons.sim_card,
    Icons.data_thresholding_rounded,
    Icons.tv,
    Icons.signal_cellular_connected_no_internet_0_bar_rounded,
    Icons.electric_meter_outlined,
    Icons.shopping_bag,
    Icons.games_outlined,
    Icons.more_horiz_sharp
  ];

  PaymentWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Text(
          'Payment',
          style: TextStyle(color: Colors.black),
        ),
        const SizedBox(
          height: 15,
        ),
        SizedBox(
          height: 200,
          child: GridView.builder(
            physics: const NeverScrollableScrollPhysics(),
            itemCount: paymentIcons.length,
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 4),
            itemBuilder: (context, index) {
              return Column(
                children: [
                  Container(
                    height: 40,
                    width: 50,
                    decoration: const BoxDecoration(
                      shape: BoxShape.circle,
                      color: Color.fromARGB(255, 232, 179, 197),
                    ),
                    child: Icon(
                      paymentIcons[index],
                      color: Colors.pink,
                    ),
                  ),
                  Text(
                    paymentStr[index],
                    style: const TextStyle(color: Colors.black),
                  )
                ],
              );
            },
          ),
        )
      ],
    );
  }
}
