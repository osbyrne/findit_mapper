import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'new_item_form.dart';

class HomePage extends StatelessWidget {
  HomePage({super.key});

  final user = FirebaseAuth.instance.currentUser!;

  void signUserOut() => FirebaseAuth.instance.signOut();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Logged in as ${user.email!}'),
        actions: [
          IconButton(
            onPressed: signUserOut,
            icon: const Icon(Icons.logout),
          )
        ],
      ),
      body: Center(
        child: ElevatedButton(
          child: const Text('Add item'),
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => NewItem()),
            );
          },
        ),
      ),
    );
  }
}
