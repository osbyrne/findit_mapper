import 'package:flutter/material.dart';

class NewItem extends StatelessWidget {
  NewItem({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("create new item"),
        actions: [
          IconButton(
            onPressed: () {
              Navigator.pop(context);
            },
            icon: const Icon(Icons.send),
          )
        ],
      ),
      body: const Center(
        child: SafeArea(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [Text("hehe")],
          ),
        ),
      ),
    );
  }
}
