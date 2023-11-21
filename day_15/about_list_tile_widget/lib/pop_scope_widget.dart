import 'package:flutter/material.dart';

class AboutListTileWidget extends StatefulWidget {
  const AboutListTileWidget({
    super.key,
  });

  @override
  State<AboutListTileWidget> createState() => _AboutListTileWidgetState();
}

class _AboutListTileWidgetState extends State<AboutListTileWidget> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(
        child: AboutListTile(
          icon: Icon(Icons.info),
          applicationIcon: FlutterLogo(),
          applicationLegalese: 'Legalese',
          applicationName: 'Flutter App',
          applicationVersion: 'version 1.0',
          aboutBoxChildren: [Text('This is a test app')],
        ),
      ),
    );
  }
}
