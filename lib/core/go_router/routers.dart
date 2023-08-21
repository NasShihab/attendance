import 'package:attendance/core/go_router/go_rout_singleton.dart';
import 'package:attendance/screen/auth/login/login_waiting_page.dart';
import 'package:attendance/screen/auth/sign_up/sign_up_page.dart';
import 'package:attendance/screen/dashboard/home/home_page/home_page.dart';
import 'package:attendance/screen/on_boarding/splash_screen/welcome_page.dart';
import 'package:attendance/screen/auth/login/login_page.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import '../../screen/auth/sign_up/sign_up_confirmation.dart';
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
              const WelcomePage(),
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
          name: 'SignUp Page',
          path: GoRoutSingleton().signUp.toString(),
          builder: (BuildContext context, GoRouterState state) =>
          const SignUpPage(),
        ),
        GoRoute(
          name: 'SignUp Confirmation',
          path: GoRoutSingleton().signUpConfirmation.toString(),
          builder: (BuildContext context, GoRouterState state) =>
          const SignUpConfirmation(),
        ),
        GoRoute(
          name: 'Home Page',
          path: GoRoutSingleton().homePage.toString(),
          builder: (BuildContext context, GoRouterState state) =>
              const HomePage(),
        ),
      ],
      path: '/',
      builder: (BuildContext context, GoRouterState state) =>
          const SplashScreen(),

    ),
  ],
);

// final GoRouter router = GoRouter(
//   initialLocation: '/',
//
//   routes: <GoRoute>[
//
//     GoRoute(
//       path: '/',
//       builder: (BuildContext context, GoRouterState state) =>
//       const SplashScreen(),
//     ),
//     GoRoute(
//       name: 'Splash Screen',
//       path: GoRoutSingleton().splashScreen.toString(),
//       builder: (BuildContext context, GoRouterState state) =>
//       const SplashScreen(),
//     ),
//     GoRoute(
//       name: 'Welcome Page',
//       path: GoRoutSingleton().welcomePage.toString(),
//       builder: (BuildContext context, GoRouterState state) =>
//       const WelcomePage(),
//     ),
//     GoRoute(
//       name: 'Login Page',
//       path: GoRoutSingleton().loginPage.toString(),
//       builder: (BuildContext context, GoRouterState state) => const LoginPage(),
//     ),
//     GoRoute(
//       name: 'Login Waiting Page',
//       path: GoRoutSingleton().loginWaiting.toString(),
//       builder: (BuildContext context, GoRouterState state) =>
//       const LoginWaitingPage(),
//     ),
//     GoRoute(
//       name: 'Dashboard Page',
//       path: GoRoutSingleton().dashboard.toString(),
//       builder: (BuildContext context, GoRouterState state) => const Dashboard(),
//     ),
//   ],
// );
