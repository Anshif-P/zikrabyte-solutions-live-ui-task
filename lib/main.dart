import 'package:flutter/material.dart';
import 'package:z_test_ui/view/screen_parent.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: ScreenParent(),
    );
  }
}
