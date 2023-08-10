import 'package:flutter/material.dart';
import '../theme_data/text_theme.dart';

class CustomTextFormField extends StatelessWidget {
  const CustomTextFormField({
    super.key,
    this.labelText,
    this.prefixIcon,
    this.suffixIcon,
    required this.controller,
    this.obscureText,
  });

  final String? labelText;
  final Widget? prefixIcon;
  final Widget? suffixIcon;
  final TextEditingController controller;
  final bool? obscureText;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: controller,
      obscureText: obscureText ?? false,
      decoration: InputDecoration(
        labelText: labelText,
        labelStyle: bodySmall(context),
        border: const OutlineInputBorder(
          borderSide: BorderSide(
            color: Colors.grey,
          ),
        ),
        prefixIcon: prefixIcon ?? const SizedBox.shrink(),
        suffixIcon: suffixIcon ?? const SizedBox.shrink(),
        hintStyle: bodySmall(context),
        alignLabelWithHint: true,
        contentPadding: EdgeInsets.zero,
      ),
      style: bodySmall(context),
    );
  }
}
