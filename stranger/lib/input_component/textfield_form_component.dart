import 'package:flutter/material.dart';

class TextFieldForm extends StatefulWidget {
  const TextFieldForm({Key? key}) : super(key: key);

  @override
  State<TextFieldForm> createState() => _TextFieldFormState();
}

class _TextFieldFormState extends State<TextFieldForm> {
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      decoration: const InputDecoration(
        hintText: 'Enter your email',
      ),
      validator: (String? value) {
        if (value == null || value.isEmpty) {
          return 'Please enter some text';
        }
        return null;
      },
    );
  }
}
