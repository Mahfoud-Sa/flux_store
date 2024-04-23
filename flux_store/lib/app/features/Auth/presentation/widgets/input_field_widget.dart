import 'package:flutter/material.dart';

class InputFieldWidget extends StatelessWidget {
  final String hintText;
  const InputFieldWidget({
    super.key,
    required this.hintText,
  });

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      decoration: InputDecoration(hintText: hintText),
    );
  }
}
