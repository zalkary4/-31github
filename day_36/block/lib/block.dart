import 'package:flutter/material.dart';

class BlockSemantikWidget extends StatefulWidget {
  const BlockSemantikWidget({Key? key}) : super(key: key);

  @override
  _BlockSemantikWidgetState createState() => _BlockSemantikWidgetState();
}

class _BlockSemantikWidgetState extends State<BlockSemantikWidget> {
  bool isShow = false;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: SizedBox(
        width: 500,
        height: double.infinity,
        child: Column(
          children: [
            OutlinedButton(
              onPressed: () {
                setState(() {
                  isShow = true;
                });
              },
              child: Text('Click'),
            ),
            if (isShow)
              BlockSemantics(
                blocking: isShow,
                child: Card(
                  color: Colors.orangeAccent,
                  child: SizedBox(
                    width: 200,
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Text('This is a card'),
                        TextButton(
                          onPressed: () {
                            setState(() {
                              isShow = false;
                            });
                          },
                          child: Text('Close'),
                        )
                      ],
                    ),
                  ),
                ),
              )
          ],
        ),
      ),
    );
  }
}