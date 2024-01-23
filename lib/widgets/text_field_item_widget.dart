import 'package:flutter/material.dart';

class TextFieldWidget extends StatelessWidget {
  final TextEditingController controller;
  final String hintText;
  final Icon icon;
  final bool isObsText;
  final TextInputType inputType;

  const TextFieldWidget(
      {super.key,
      required this.controller,
      required this.hintText,
      required this.icon,
      required this.isObsText,
      required this.inputType});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 10),
      child: TextFormField(
        controller: controller,
        obscureText: isObsText,
        keyboardType: inputType,
        validator: (value) {
          if (value == null || value.isEmpty) {
            
          };
        }
        if (hintText == 'Актуальный email' && !validateEmail(value)) {

        }
      ),
    );
  }
}
