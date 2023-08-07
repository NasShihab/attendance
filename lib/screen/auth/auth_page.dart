import 'package:flutter/material.dart';
import '../../go_router/go_rout_singleton.dart';

class AuthPage extends StatelessWidget {
  const AuthPage({super.key});

  @override
  Widget build(BuildContext context) {
    GoRoutSingleton().authPage = 'authPage';

    return Scaffold(
      appBar: AppBar(
        title: const Text('Auth Page'),
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: () {},
          child: const Text('Auth Page 222'),
        ),
      ),
    );
  }
}
