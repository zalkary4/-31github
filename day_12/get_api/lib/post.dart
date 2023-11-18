import 'package:flutter/material.dart';

class DecorateBoxWidget extends StatefulWidget {
  const DecorateBoxWidget({Key? key}) : super(key: key);

  @override
  _DecorateBoxWidgetState createState() => _DecorateBoxWidgetState();
}

class _DecorateBoxWidgetState extends State<DecorateBoxWidget> {
  @override
  Widget build(BuildContext context) {
    return const SizedBox(
      height: double.infinity,
      width: double.infinity,
      child: DecoratedBox(
        decoration: BoxDecoration(
          gradient: RadialGradient(
            colors: [
              Colors.purple,
              Color.fromARGB(255, 0, 140, 255),
              Color.fromARGB(255, 127, 169, 241),
              Colors.green,
              Colors.orange,
              Colors.deepOrange,
              Colors.red,
            ],
          ),
        ),
      ),
    );
  }
}
