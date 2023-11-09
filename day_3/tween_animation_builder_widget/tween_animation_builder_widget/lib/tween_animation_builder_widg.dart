import 'package:flutter/material.dart';

class TweenAnimationBuilderWidget extends StatefulWidget {
  const TweenAnimationBuilderWidget({Key? key}) : super(key: key);

  @override
  _TweenAnimationBuilderWidgetState createState() =>
      _TweenAnimationBuilderWidgetState();
}

class _TweenAnimationBuilderWidgetState
    extends State<TweenAnimationBuilderWidget> {
  double targetvalue = 100;
  @override
  Widget build(BuildContext context) {
    return Center(
      child: TweenAnimationBuilder(
        tween: Tween<double>(begin: 0, end: targetvalue),
        duration: Duration(milliseconds: 600),
        builder: (BuildContext context, double size, Widget? child) {
          return IconButton(
            iconSize: size,
            color: Colors.orangeAccent,
            onPressed: () {
              setState(() {
                targetvalue = targetvalue == 100 ? 250 : 100;
              });
            },
            icon: const Icon(Icons.flutter_dash),
          );
        },
      ),
    );
  }
}
