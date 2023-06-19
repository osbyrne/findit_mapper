import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import '../components/auth.dart';
import 'home.dart';
import 'login.dart';

class AuthPage extends StatelessWidget {
  const AuthPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: StreamBuilder<User?>(
        builder: (context, snapshot) {
          if (snapshot.hasData) {
            return HomePage();
          } else {
            return LoginPage(
              onTap: () => AuthService().signInWithGoogle(),
            );
          }
        },
        stream: FirebaseAuth.instance.authStateChanges(),
      ),
    );
  }
}
