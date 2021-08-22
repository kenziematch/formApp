import 'package:flutter/material.dart';
import 'package:input_form_user/utilities/constants.dart';

class ReuseableTextFormField extends StatelessWidget {
  const ReuseableTextFormField({
    required this.controller,
    required this.keyboardType,
    required this.hintText,
    required this.labelText,
  });

  final TextEditingController controller;
  final String hintText;
  final String labelText;
  final TextInputType keyboardType;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: controller,
      keyboardType: keyboardType,
      decoration: InputDecoration(
        hintText: hintText,
        labelText: labelText,
        labelStyle: kLabelTextStyle,
        focusedBorder: OutlineInputBorder(
          borderSide: BorderSide(
            width: 2.0,
            color: Color(0xFF05B0FF),
          ),
          borderRadius: BorderRadius.circular(15.0),
        ),
        enabledBorder: OutlineInputBorder(
          borderSide: BorderSide(
            width: 2.0,
            color: Color(0xFF05B0FF),
          ),
          borderRadius: BorderRadius.circular(15.0),
        ),
        errorBorder: OutlineInputBorder(
          borderSide: BorderSide(color: Colors.red),
          borderRadius: BorderRadius.circular(15.0),
        ),
        focusedErrorBorder: OutlineInputBorder(
          borderSide: BorderSide(color: Colors.red),
          borderRadius: BorderRadius.circular(15.0),
        ),
      ),
      validator: (String? value) {
        if (value!.isEmpty) {
          return 'Input is required';
        }
      },
    );
  }
}