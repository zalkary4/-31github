import 'package:flutter/material.dart';

class ButtonNavigatBar extends StatefulWidget {
  const ButtonNavigatBar({Key? key}) : super(key: key);

  @override
  _ButtonNavigatBarState createState() => _ButtonNavigatBarState();
}

class _ButtonNavigatBarState extends State<ButtonNavigatBar> {
  int _currentIndex = 0;
  List body = const [
    Icon(Icons.home),
    Icon(Icons.menu),
    Icon(Icons.person),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: body[_currentIndex],
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: const [
          BottomNavigationBarItem(
            label: 'Home',
            icon: Icon(Icons.home),
          ),
          BottomNavigationBarItem(
            label: 'Menu',
            icon: Icon(Icons.menu),
          ),
          BottomNavigationBarItem(
            label: 'Profile',
            icon: Icon(Icons.person),
          ),
        ],
        currentIndex: _currentIndex,
        onTap: (int newIndex) {
          setState(() {
            _currentIndex = newIndex;
          });
        },
      ),
    );
  }
}
