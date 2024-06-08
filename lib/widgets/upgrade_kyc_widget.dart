import 'package:flutter/material.dart';

class UpdateKycWidget extends StatelessWidget {
  const UpdateKycWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      decoration: BoxDecoration(
          color: Colors.grey.shade100,
          borderRadius: const BorderRadius.all(Radius.circular(5))),
      child: const ListTile(
        contentPadding: EdgeInsets.symmetric(horizontal: 10),
        title: Text(
          'Upgrade your kyc to earn more access',
          style: TextStyle(fontSize: 12),
        ),
        leading: Icon(Icons.volume_down),
        trailing: Icon(
          Icons.arrow_forward_ios_outlined,
          size: 14,
        ),
      ),
    );
  }
}
