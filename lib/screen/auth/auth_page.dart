import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import '../../go_router/go_rout_singleton.dart';

class AuthPage extends StatelessWidget {
  const AuthPage({super.key});

  @override
  Widget build(BuildContext context) {
    GoRoutSingleton().authPage = 'authPage';

    return Scaffold(
      appBar: AppBar(
        title: const Text('Auth Page 1'),
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: () {
           context.go('/${GoRoutSingleton().authPage2}');
          },
          child: const Text('Auth Page 2'),
        ),
      ),
    );
  }
}
