import 'package:attendance/screen/auth/login/login_waiting_page.dart';
import 'package:attendance/screen/auth/sign_up/sign_up_confirmation.dart';
import 'package:attendance/screen/auth/sign_up/sign_up_page.dart';
import 'package:attendance/screen/dashboard/home/home_page/home_page.dart';
import 'package:attendance/screen/on_boarding/splash_screen/welcome_page.dart';
import 'package:attendance/screen/auth/login/login_page.dart';
import 'package:attendance/screen/on_boarding/splash_screen/splash_screen.dart';

import '../../screen/dashboard/home/leaves/new_leaves.dart';

class GoRoutSingleton {
  static final GoRoutSingleton _singleton = GoRoutSingleton._internal();

  factory GoRoutSingleton() {
    return _singleton;
  }

  GoRoutSingleton._internal();

  String? splashScreen = const SplashScreen().runtimeType.toString();
  String? welcomePage = const WelcomePage().runtimeType.toString();
  String? loginPage = const LoginPage().runtimeType.toString();
  String? loginWaiting = const LoginWaitingPage().runtimeType.toString();
  String? signUp = const SignUpPage().runtimeType.toString();
  String? signUpConfirmation =
      const SignUpConfirmation().runtimeType.toString();
  String? homePage = const HomePage().runtimeType.toString();
  String? newLeave = const  NewLeave().runtimeType.toString();
}
