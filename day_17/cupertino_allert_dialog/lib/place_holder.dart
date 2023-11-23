import 'package:flutter/cupertino.dart';

class CupertinoAllertDialog extends StatefulWidget {
  const CupertinoAllertDialog({
    super.key,
  });

  @override
  State<CupertinoAllertDialog> createState() => _CupertinoAllertDialogState();
}

class _CupertinoAllertDialogState extends State<CupertinoAllertDialog> {
  @override
  Widget build(BuildContext context) {
    return CupertinoPageScaffold(
      child: Center(
        child: CupertinoButton(
          onPressed: () {
            showCupertinoDialog(
              context: context,
              builder: (BuildContext context) => CupertinoAlertDialog(
                title: const Text('Alert'),
                content: const Text('Are you subscribe to Flutter Mapp?'),
                actions: <CupertinoDialogAction>[
                  CupertinoDialogAction(
                    isDestructiveAction: true,
                    onPressed: () {
                      Navigator.pop(context);
                    },
                    child: const Text('No'),
                  ),
                  CupertinoDialogAction(
                    // isDestructiveAction: true,
                    onPressed: () {
                      Navigator.pop(context);
                    },
                    child: const Text('Yes'),
                  ),
                ],
              ),
            );
          },
          child: const Text('Cupertino Alert Dialog'),
        ),
      ),
    );
  }
}
