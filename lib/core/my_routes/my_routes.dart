import 'package:attendance/core/go_router/go_rout_singleton.dart';
import 'package:attendance/screen/auth/login/login_page.dart';
import 'package:attendance/screen/auth/login/login_waiting_page.dart';
import 'package:attendance/screen/auth/sign_up/sign_up_confirmation.dart';
import 'package:attendance/screen/auth/sign_up/sign_up_page.dart';
import 'package:attendance/screen/dashboard/dashboard_page.dart';
import 'package:attendance/screen/on_boarding/splash_screen/welcome_page.dart';
import 'package:flutter/material.dart';

var myRoutes = <String, WidgetBuilder>{
  '/': (context) => const Dashboard(),
  // '/': (context) => const SplashScreen(),
  '${GoRoutSingleton().welcomePage}': (context) => const WelcomePage(),
  '${GoRoutSingleton().loginPage}': (context) => const LoginPage(),
  '${GoRoutSingleton().loginWaiting}': (context) => const LoginWaitingPage(),
  '${GoRoutSingleton().signUp}': (context) => const SignUpPage(),
  '${GoRoutSingleton().signUpConfirmation}': (context) =>
      const SignUpConfirmation(),
  '${GoRoutSingleton().dashboard}': (context) => const Dashboard(),
  '${GoRoutSingleton().welcomePage}': (context) => const WelcomePage(),
};
