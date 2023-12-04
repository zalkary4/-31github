import 'package:flutter/material.dart';

class StreamBuilderWidget02 extends StatefulWidget {
  const StreamBuilderWidget02({Key? key}) : super(key: key);

  @override
  _StreamBuilderWidget02State createState() => _StreamBuilderWidget02State();
}

/// face firebase stream
Stream<int> generateStream = (() async* {
  await Future<void>.delayed(const Duration(seconds: 2));
  yield 1;
  await Future<void>.delayed(const Duration(seconds: 1));
  yield 2;
  // throw 'An error occured';
  await Future<void>.delayed(const Duration(seconds: 1));
  yield 3;
})();

class _StreamBuilderWidget02State extends State<StreamBuilderWidget02> {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: StreamBuilder(
        stream: generateStream,
        initialData: 0,
        builder: (context, snapshot) {
          if (snapshot.connectionState == ConnectionState.waiting) {
            return CircularProgressIndicator.adaptive();
          }
          if (snapshot.hasError) {
            return Text('Error');
          } else {
            return Text(
              snapshot.data.toString(),
              style: TextStyle(fontSize: 50),
            );
          }
        },
      ),
    );
  }
}