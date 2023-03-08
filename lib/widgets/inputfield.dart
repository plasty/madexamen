import 'package:flutter/material.dart';

enum InputType { text, email, password }

class Inputfield extends StatelessWidget {
  final TextEditingController controller;
  final String label;
  final Color labelColor;
  final Color backgroundColor;
  final double borderRadius;
  final InputType inputType;
  final IconData? icon;
  final bool enableBorder;

  const Inputfield(
      {super.key,
        required this.controller,
        required this.label,
        this.labelColor = Colors.black,
        this.backgroundColor = Colors.white,
        this.borderRadius = 5,
        required this.inputType,
        this.icon,
        this.enableBorder = false
      });

  @override
  Widget build(BuildContext context) {
    TextInputType selectedInputType;
    switch (inputType) {
      case InputType.text:
        selectedInputType = TextInputType.text;
        break;
      case InputType.email:
        selectedInputType = TextInputType.emailAddress;
        break;
      case InputType.password:
        selectedInputType = TextInputType.visiblePassword;
        break;
    }

    return TextField(
      controller: controller,
      obscureText: inputType == InputType.password ? true : false,
      enableSuggestions: inputType == InputType.password ? false : true,
      autocorrect: inputType == InputType.password ? false : true,
      keyboardType: selectedInputType,
      style: TextStyle(
        color: labelColor,
      ),
      decoration: InputDecoration(
        filled: true,
        fillColor: backgroundColor,
        floatingLabelBehavior: FloatingLabelBehavior.never,
        prefixIcon: Icon(icon, color: labelColor),
        labelText: label,
        labelStyle: TextStyle(
          color: labelColor,
          fontWeight: FontWeight.w500,
        ),
        border: OutlineInputBorder(
          borderSide: BorderSide(color: enableBorder ? labelColor : Colors.white),
          borderRadius: BorderRadius.all(Radius.circular(borderRadius)),
        ),
        enabledBorder: OutlineInputBorder(
          borderSide: BorderSide(color: enableBorder ? labelColor : Colors.white),
          borderRadius: BorderRadius.all(Radius.circular(borderRadius)),
        ),
        focusedBorder: OutlineInputBorder(
          borderSide: BorderSide(color: enableBorder ? labelColor : Colors.white),
          borderRadius: BorderRadius.all(Radius.circular(borderRadius)),
        ),
      ),
    );
  }
}
