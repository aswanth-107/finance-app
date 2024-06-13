import 'package:financeapp/model/coolors.dart';
import 'package:flutter/material.dart';

class Customtextformfield extends StatelessWidget {
  const Customtextformfield(
      {super.key, required this.controller, required this.labelTxt});
  final TextEditingController controller;
  final String labelTxt;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: controller,
      decoration: InputDecoration(
        border: const OutlineInputBorder(),
        label: Text(labelTxt),
        labelStyle:
            const TextStyle(color: textcoolor, fontWeight: FontWeight.w500),
      ),
      keyboardType: TextInputType.emailAddress,
    );
  }
}
