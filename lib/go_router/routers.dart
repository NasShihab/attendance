import 'package:attendance/go_router/go_rout_singleton.dart';
import 'package:attendance/screen/auth/auth_page%202.dart';
import 'package:attendance/screen/auth/auth_page.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import '../screen/on_boarding/splash_screen/splash_screen.dart';

final GoRouter router = GoRouter(
  routes: <GoRoute>[
    GoRoute(
      routes: <GoRoute>[
        GoRoute(
          path: GoRoutSingleton().splashScreen.toString(),
          builder: (BuildContext context, GoRouterState state) =>
          const SplashScreen(),
        ),
        GoRoute(
          path: GoRoutSingleton().authPage.toString(),
          builder: (BuildContext context, GoRouterState state) =>
              const AuthPage(),
        ),
        GoRoute(
          path: GoRoutSingleton().authPage2.toString(),
          builder: (BuildContext context, GoRouterState state) =>
              const AuthPage2(),
        ),
      ],
      path: '/',
      builder: (BuildContext context, GoRouterState state) =>
          const SplashScreen(),
    ),
  ],
);
