import 'package:flutter/material.dart';

class WrapWidget extends StatefulWidget {
  const WrapWidget({Key? key}) : super(key: key);

  @override
  _WrapWidgetState createState() => _WrapWidgetState();
}

class _WrapWidgetState extends State<WrapWidget> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Center(
        child: Wrap(
          spacing: 10.0,
          runSpacing: 50.0,
          children: List.generate(
            10,
            (index) => Chip(
              avatar: CircleAvatar(
                backgroundColor: Colors.amber,
                child: Icon(Icons.person),
              ),
              label: Text('Mapp'),
            ),
          ),
        ),
      ),
    );
  }
}
