import 'package:flutter/material.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 51, 180, 255),
      appBar: AppBar(title: Text('Login Page')),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 14),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Text(
                'Sign In',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 58,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const Text(
                'Register',
                style: TextStyle(color: Colors.white, fontSize: 32),
              ),
              TextFormField(
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  filled: true,
                ),
              ),
              TextFormField(),
            ],
          ),
        ),
      ),
    );
  }
}
