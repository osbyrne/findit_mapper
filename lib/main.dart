import 'package:flutter/material.dart';

final _formKey = GlobalKey<FormState>();

class FormWidget extends StatelessWidget {
  const FormWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Form(
        key: _formKey,
        child: Column(
          children: [
            TextFormField(
              validator: (value) {
                if (value == null || value.isEmpty) {
                  return 'Enter something';
                }
                return null;
              },
            ),
            ElevatedButton(
              onPressed: () {
                if (_formKey.currentState!.validate()) {
                  ScaffoldMessenger.of(context).showSnackBar(
                    const SnackBar(
                      content: Text('Great!'),
                    ),
                  );
                }
              },
              child: const Text('Validate'),
            ),
          ],
        ),
      ),
    );
  }
}
