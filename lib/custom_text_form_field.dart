import 'package:flutter/material.dart';

class CustomTextFormField extends StatelessWidget {
  const CustomTextFormField({
    Key key,
    this.prefixIcon,
    this.labelText,
    this.hintText,
    this.validator,
    this.keyboardType,
  }) : super(key: key);

  final Icon prefixIcon;
  final String labelText;
  final String hintText;
  final String Function(String) validator;
  final TextInputType keyboardType;

  @override
  Widget build(BuildContext context) {
    const SizedBox defaultSizedBoxHeight = const SizedBox(height: 16.0);
    
    return Column(
      children: [
        TextFormField(
          decoration: InputDecoration(
            prefixIcon: prefixIcon ?? null,
            floatingLabelBehavior: FloatingLabelBehavior.always,
            labelText: labelText,
            hintText: hintText,
            hintStyle: TextStyle(color: Colors.grey),
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(16.0),
            ),
          ),
          validator: validator,
          keyboardType: keyboardType,
        ),
        defaultSizedBoxHeight,
      ],
    );
  }
}
