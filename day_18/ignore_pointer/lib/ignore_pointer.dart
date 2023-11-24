import 'package:flutter/material.dart';

class IgnorePointerWidget extends StatefulWidget {
  const IgnorePointerWidget({Key? key}) : super(key: key);

  @override
  _IgnorePointerWidgetState createState() => _IgnorePointerWidgetState();
}

class _IgnorePointerWidgetState extends State<IgnorePointerWidget> {
  bool ignore = false;
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          ElevatedButton(
            onPressed: () {
              setState(() {
                ignore = !ignore;
              });
            },
            style: ElevatedButton.styleFrom(
              backgroundColor: ignore ? Colors.red : Colors.green,
            ),
            child: Text(
              ignore ? 'Blocked' : 'All good',
            ),
          ),
          // const Divider(),
          IgnorePointer(
            ignoring: ignore,
            child: ElevatedButton(
              child: const Text('Click me'),
              onPressed: () {},
            ),
          )
        ],
      ),
    );
  }
}
