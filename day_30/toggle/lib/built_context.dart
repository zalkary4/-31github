import 'package:flutter/material.dart';

class BuildContextWidget037 extends StatefulWidget {
  const BuildContextWidget037({Key? key}) : super(key: key);

  @override
  _BuildContextWidget037State createState() => _BuildContextWidget037State();
}

class _BuildContextWidget037State extends State<BuildContextWidget037> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: myWidget(),
    );
  }
}

myWidget() => Builder(
      builder: (BuildContext context) {
        return Text(
          'Text with Theme',
          style: Theme.of(context).textTheme.displaySmall,
        );
      },
    );