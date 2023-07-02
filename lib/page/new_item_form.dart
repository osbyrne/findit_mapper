import 'package:flutter/material.dart';
import 'camera.dart';

Widget cameraButton() {
  return const Center(
    child: SafeArea(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          TextButton(
            onPressed: openCamera,
            child: Text("Open Camera"),
          )
        ],
      ),
    ),
  );
}

class NewItem extends StatelessWidget {
  const NewItem({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("create new item"),
        actions: <Widget>[
          IconButton(
            onPressed: () => Navigator.pop(context),
            icon: const Icon(Icons.send),
          )
        ],
      ),
      body: cameraButton(),
    );
  }
}
