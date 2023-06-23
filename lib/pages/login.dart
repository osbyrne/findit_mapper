import 'package:findit_mapper/components/auth.dart';
import 'package:findit_mapper/components/square_tile.dart';
import 'package:flutter/material.dart';

googleLoginButton() {
  return SquareTile(
    imagePath: 'lib/images/google.png',
    onTap: () => AuthService().signInWithGoogle(),
  );
}

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[300],
      body: SafeArea(
        child: Center(
          child: Column(
            children: [
              const SizedBox(height: 70),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [googleLoginButton()],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
