import 'package:flutter/material.dart';

class CustomTextField extends StatelessWidget {
  final String label;
  final TextEditingController controller;
  final TextInputType? keyboardType;
  final bool isPassword;

  const CustomTextField({
    Key? key,
    required this.label,
    required this.controller,
    this.keyboardType,
    this.isPassword = false, required String? Function(dynamic value) validator,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          label,
          style: TextStyle(
            color: Color(0xFF7D8797),
          ),
        ),
        const SizedBox(height: 4),
        TextFormField(
          controller: controller,
          decoration: InputDecoration(
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(10),
              borderSide: BorderSide(
                color: Color(0xFFE9E9E9),
              ),
            ),
            enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(10),
              borderSide: BorderSide(
                color: Color(0xFFE9E9E9),
              ),
            ),
          ),
          keyboardType: keyboardType,
          obscureText: isPassword,
          validator: (value) {
            if (value == null || value.isEmpty) {
              return 'Field tidak boleh kosong';
            }
            return null;
          },
        ),
      ],
    );
  }
}