import 'package:attendance/core/go_router/go_rout_singleton.dart';
import 'package:attendance/screen/auth/login/login_page.dart';
import 'package:attendance/screen/auth/login/login_waiting_page.dart';
import 'package:attendance/screen/auth/sign_up/sign_up_confirmation.dart';
import 'package:attendance/screen/auth/sign_up/sign_up_page.dart';
import 'package:attendance/screen/dashboard/dashboard_page/dashboard.dart';
import 'package:attendance/screen/dashboard/home/home_page/home_page.dart';
import 'package:attendance/screen/dashboard/home/leaves/new_leaves.dart';
import 'package:attendance/screen/on_boarding/splash_screen/welcome_page.dart';
import 'package:flutter/material.dart';

var myRoutes = <String, WidgetBuilder>{
  '/': (context) => const DashBoard(),
  // '/': (context) => const SplashScreen(),
  '${GoRoutSingleton().welcomePage}': (context) => const WelcomePage(),
  '${GoRoutSingleton().loginPage}': (context) => const LoginPage(),
  '${GoRoutSingleton().loginWaiting}': (context) => const LoginWaitingPage(),
  '${GoRoutSingleton().signUp}': (context) => const SignUpPage(),
  '${GoRoutSingleton().signUpConfirmation}': (context) =>
      const SignUpConfirmation(),
  '${GoRoutSingleton().homePage}': (context) => const HomePage(),
  '${GoRoutSingleton().welcomePage}': (context) => const WelcomePage(),
  '${GoRoutSingleton().newLeave}': (context) => const NewLeave(),
};
