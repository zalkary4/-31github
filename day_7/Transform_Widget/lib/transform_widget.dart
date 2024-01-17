import 'package:flutter/material.dart';
import 'dart:math';

class TransformWidget extends StatefulWidget {
  const TransformWidget({Key? key}) : super(key: key);

  @override
  _TransformWidgetState createState() => _TransformWidgetState();
}

class _TransformWidgetState extends State<TransformWidget> {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Transform(
        transform: Matrix4.rotationZ(pi * 4 / 3),
        alignment: Alignment.center,
        child: const FlutterLogo(size: 300),
      ),
    );
  }
}
