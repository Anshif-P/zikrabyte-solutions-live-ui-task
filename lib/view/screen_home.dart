import 'package:flutter/material.dart';
import 'package:z_test_ui/widgets/balance_card_widget.dart';
import 'package:z_test_ui/widgets/header.dart';
import 'package:z_test_ui/widgets/payment_widget.dart';
import 'package:z_test_ui/widgets/refer_earn_widget.dart';
import 'package:z_test_ui/widgets/upgrade_kyc_widget.dart';

class ScreenHome extends StatelessWidget {
  const ScreenHome({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Padding(
        padding: const EdgeInsets.all(10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const HeaderWidget(),
            const SizedBox(
              height: 15,
            ),
            BalanceCardWidget(),
            const SizedBox(
              height: 10,
            ),
            PaymentWidget(),
            const UpdateKycWidget(),
            const SizedBox(
              height: 15,
            ),
            const ReferEarnWidget()
          ],
        ),
      )),
    );
  }
}
