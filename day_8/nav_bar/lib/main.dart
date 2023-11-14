import 'package:bottom_sheet/button_navigat_bar_widget035.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: Scaffold(
        body: ButtonNavigatBar(),
      ),
    );
  }
}
