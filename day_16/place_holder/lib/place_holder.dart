import 'package:flutter/material.dart';

class PlaceHolder extends StatefulWidget {
  const PlaceHolder({Key? key}) : super(key: key);

  @override
  _PlaceHolderState createState() => _PlaceHolderState();
}

class _PlaceHolderState extends State<PlaceHolder> {
  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        Placeholder(
          fallbackHeight: 310,
          fallbackWidth: 70,
          color: Colors.orangeAccent,
        )
      ],
    );
  }
}
