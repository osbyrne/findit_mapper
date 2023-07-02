import 'package:flutter/material.dart';
import '../auth_service.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: SafeArea(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              GestureDetector(
                onTap: () => AuthService().signInWithGoogle(),
                child: Image.asset('lib/images/google.png', height: 40),
              )
            ],
          ),
        ),
      ),
    );
  }
}
