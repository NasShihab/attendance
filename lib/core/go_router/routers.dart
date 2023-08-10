import 'package:attendance/core/go_router/go_rout_singleton.dart';
import 'package:attendance/screen/auth/login/login_waiting_page.dart';
import 'package:attendance/screen/dashboard/dashboard_page.dart';
import 'package:attendance/screen/on_boarding/splash_screen/welcome_page.dart';
import 'package:attendance/screen/auth/login/login_page.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import '../../screen/on_boarding/splash_screen/splash_screen.dart';

final GoRouter router = GoRouter(
  routes: <GoRoute>[
    GoRoute(
      routes: <GoRoute>[
        GoRoute(
          name: 'Splash Screen',
          path: GoRoutSingleton().splashScreen.toString(),
          builder: (BuildContext context, GoRouterState state) =>
              const SplashScreen(),
        ),
        GoRoute(
          name: 'Welcome Page',
          path: GoRoutSingleton().welcomePage.toString(),
          builder: (BuildContext context, GoRouterState state) =>
              const AuthPage(),
        ),
        GoRoute(
          name: 'Login Page',
          path: GoRoutSingleton().loginPage.toString(),
          builder: (BuildContext context, GoRouterState state) =>
              const LoginPage(),
        ),
        GoRoute(
          name: 'Login Waiting Page',
          path: GoRoutSingleton().loginWaiting.toString(),
          builder: (BuildContext context, GoRouterState state) =>
              const LoginWaitingPage(),
        ),
        GoRoute(
          name: 'Dashboard Page',
          path: GoRoutSingleton().dashboard.toString(),
          builder: (BuildContext context, GoRouterState state) =>
              const Dashboard(),
        ),
      ],
      path: '/',
      builder: (BuildContext context, GoRouterState state) =>
          const SplashScreen(),
    ),
  ],
);
