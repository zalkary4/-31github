import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Home Page')),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text('Hi!'),
            TextButton(
                onPressed: () {
                  Navigator.pop(context);
                },
                child: Text('Back to Login Page'))
          ],
        ),
      ),
    );
  }
}
