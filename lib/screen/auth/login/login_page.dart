import 'package:attendance/core/image_asset/image_files.dart';
import 'package:attendance/theme_data/text_theme.dart';
import 'package:flutter/material.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Welcome Back',
          style: titleLarge(context),
        ),
      ),
      body: SafeArea(
        child: Column(
          children: [
            Center(
              child: Image.asset(ImageCore().welcome),
            ),
          ],
        ),
      ),
    );
  }
}
