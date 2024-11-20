
import 'package:flutter/material.dart';

class CustemTextFieldLoginScreen extends StatelessWidget {
  const CustemTextFieldLoginScreen({
    super.key,
    required this.onChange,
    required this.keyForm,
    this.validation,
    required this.controllerName,
  });
  final Function(String) onChange;
  final GlobalKey<FormState> keyForm;
  final FormFieldValidator<String>? validation;
final TextEditingController controllerName;
  @override
  Widget build(BuildContext context) {
    return Form(
      key: keyForm,
      child: TextFormField(
        controller: controllerName,
        validator: validation,
        
        onChanged: onChange,
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
      ),
    );
  }
}
