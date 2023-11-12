import 'package:flutter/material.dart';
import 'package:piano_app/home_page.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Demo!',
      theme: ThemeData.dark(),
      home: HomePage(),
    );
  }
}
