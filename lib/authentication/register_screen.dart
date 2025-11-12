import 'package:flutter/material.dart';

/// Register Screen
class RegisterScreen extends StatelessWidget {
  const RegisterScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Align(
            alignment: Alignment.center,
            child: Text("Register"),
          )
        ],
      ),
    );
  }
}
