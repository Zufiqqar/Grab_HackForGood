import 'package:flutter/material.dart';

class FormParent extends StatefulWidget {
  final List<Widget> children;
  const FormParent({
    Key? key,
    required this.children,
  }) : super(key: key);

  @override
  State<FormParent> createState() => _MyFormParent();
}

class _MyFormParent extends State<FormParent> {
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Form(
      key: _formKey,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: widget.children,
      ),
    );
  }
}
