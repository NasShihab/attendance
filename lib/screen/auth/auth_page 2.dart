import 'package:flutter/material.dart';
import '../../go_router/go_rout_singleton.dart';

class AuthPage2 extends StatelessWidget {
  const AuthPage2({super.key});

  @override
  Widget build(BuildContext context) {
    GoRoutSingleton().authPage = 'authPage2';

    return Scaffold(
      appBar: AppBar(
        title: const Text('Auth Page 222'),
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: () {},
          child: const Text('Auth Page'),
        ),
      ),
    );
  }
}
