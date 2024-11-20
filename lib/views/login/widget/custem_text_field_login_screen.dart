
import 'package:flutter/material.dart';

class CustemTextFieldLoginScreen extends StatelessWidget {
  const CustemTextFieldLoginScreen({
    super.key, required this.onChange,
  });
final Function(String) onChange;
  @override
  Widget build(BuildContext context) {
    return TextField(
      onChanged:onChange ,
      decoration: const InputDecoration(
        border: OutlineInputBorder(
          borderRadius: BorderRadius.all(
            Radius.circular(20),
          ),
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.all(
            Radius.circular(20),
          ),
        ),
      ),
    );
  }
}
