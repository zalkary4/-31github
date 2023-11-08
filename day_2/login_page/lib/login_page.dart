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
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 32,
                  decorationColor: Colors.white,
                ),
              ),
              TextFormField(
                style: const TextStyle(color: Colors.green),
                decoration: const InputDecoration(
                  filled: true,
                  enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.black),
                  ),
                  border: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.yellow)),
                  hintText: '+996 123 456 789',
                  prefixIcon: Icon(
                    Icons.call,
                    color: Colors.green,
                  ),
                ),
              ),
              SizedBox(height: 20),
              TextFormField(
                style: TextStyle(color: Colors.green),
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  filled: true,
                  hintText: 'mail@gmail.com',
                  prefixIcon: Icon(
                    Icons.mail,
                    color: Colors.green,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
