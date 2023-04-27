import 'dart:core';

import 'package:flutter/material.dart';
import 'package:gsheets/gsheets.dart';
import 'item.dart';

void main() => runApp(const MainPage());

class MainPage extends StatelessWidget {
  const MainPage({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'main page',
      theme: ThemeData(
        primarySwatch: Colors.lightBlue,
      ),
      home: const MyHomePage(title: ""),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => const FormRoute(),
            ),
          );
        },
        tooltip: 'add new item DB',
        child: const Icon(Icons.add),
      ),
    );
  }
}

class FormRoute extends StatelessWidget {
  const FormRoute({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('new item'),
      ),
      body: const MyCustomForm(),
    );
  }
}

class MyCustomForm extends StatefulWidget {
  const MyCustomForm({super.key});

  @override
  MyCustomFormState createState() {
    return MyCustomFormState();
  }
}

class MyCustomFormState extends State<MyCustomForm> {
  final _formKey = GlobalKey<FormState>();
  final _item = Item();

  @override
  Widget build(BuildContext context) {
    return Form(
      key: _formKey,
      child: Column(
        children: <Widget>[
          TextFormField(
            decoration: const InputDecoration(labelText: "nom de l'article"),
            validator: (value) {
              if (value == null || value.isEmpty) {
                return "Entrez le nom de l'article";
              }
              if (value.length < 30) {
                return "Entrez un nom plus court";
              }
              return null;
            },
            onSaved: (val) => setState(() => _item.nom = val),
          ),
          TextFormField(
            decoration:
                const InputDecoration(labelText: "description de l'article"),
            validator: (value) {
              if (value == null || value.isEmpty) {
                return "Entrez la description de l'article";
              }
              if (value.length < 50) {
                return "Entrez un nom plus court";
              }
              return null;
            },
            onSaved: (val) => setState(() => _item.description = val),
          ),
          //TODO need other fields

          ElevatedButton(
            onPressed: () {
              if (_formKey.currentState!.validate()) {
                ScaffoldMessenger.of(context).showSnackBar(
                  const SnackBar(
                    content: Text('Processing Data'),
                  ),
                );
              }
            },
            child: const Text('Submit'),
          ),
        ],
      ),
    );
  }
}
