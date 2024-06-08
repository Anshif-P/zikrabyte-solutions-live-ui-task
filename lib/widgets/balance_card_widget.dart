import 'package:flutter/material.dart';

class BalanceCardWidget extends StatelessWidget {
  final List<String> str = ['Add Money', 'Transfer', 'Request Money'];
  final List<IconData> icons = [
    Icons.arrow_upward,
    Icons.transfer_within_a_station_sharp,
    Icons.arrow_downward_outlined
  ];
  BalanceCardWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 215,
      width: double.maxFinite,
      decoration: const BoxDecoration(
          color: Colors.pink,
          borderRadius: BorderRadius.all(Radius.circular(10))),
      child: Padding(
        padding: const EdgeInsets.all(15),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            const Expanded(
                flex: 6,
                child: Row(
                  children: [
                    Expanded(
                        child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          children: [
                            Text(
                              'Total Balance',
                              style: TextStyle(color: Colors.white),
                            ),
                            SizedBox(
                              width: 8,
                            ),
                            Icon(
                              Icons.remove_red_eye,
                              color: Colors.white,
                            )
                          ],
                        ),
                        SizedBox(
                          height: 15,
                        ),
                        Text(
                          '₹583403.00',
                          style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.w500,
                              fontSize: 22),
                        )
                      ],
                    )),
                    Expanded(
                        child: Column(
                      children: [
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            Text(
                              'Transaction',
                              style: TextStyle(color: Colors.white),
                            ),
                            SizedBox(
                              width: 8,
                            ),
                            Icon(
                              Icons.keyboard_arrow_right_outlined,
                              color: Colors.white,
                            )
                          ],
                        ),
                      ],
                    ))
                  ],
                )),
            Expanded(
                flex: 4,
                child: GridView.builder(
                  physics: const NeverScrollableScrollPhysics(),
                  itemCount: str.length,
                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 3),
                  itemBuilder: (context, index) {
                    return Column(
                      children: [
                        Container(
                          height: 40,
                          width: 50,
                          decoration: const BoxDecoration(
                              color: Colors.white,
                              borderRadius:
                                  BorderRadius.all(Radius.circular(6))),
                          child: Icon(
                            icons[index],
                            color: Colors.pink,
                          ),
                        ),
                        Text(
                          str[index],
                          style: const TextStyle(color: Colors.white),
                        )
                      ],
                    );
                  },
                ))
          ],
        ),
      ),
    );
  }
}
