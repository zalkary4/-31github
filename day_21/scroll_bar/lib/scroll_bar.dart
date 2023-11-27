import 'package:flutter/cupertino.dart';

class CupertinoScrollbarWidget extends StatefulWidget {
  const CupertinoScrollbarWidget({Key? key}) : super(key: key);

  @override
  _CupertinoScrollbarWidgetState createState() =>
      _CupertinoScrollbarWidgetState();
}

class _CupertinoScrollbarWidgetState extends State<CupertinoScrollbarWidget> {
  @override
  Widget build(BuildContext context) {
    return CupertinoPageScaffold(
      child: CupertinoScrollbar(
        thickness: 6.0,
        thicknessWhileDragging: 10.0,
        radius: const Radius.circular(35.0),
        radiusWhileDragging: Radius.zero,
        child: ListView.builder(
          itemCount: 50,
          itemBuilder: (BuildContext context, int index) {
            return Center(
              child: Text(
                '$index',
                style: const TextStyle(fontSize: 28),
              ),
            );
          },
        ),
      ),
    );
  }
}