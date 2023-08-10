import 'package:attendance/screen/auth/login/login_waiting_page.dart';
import 'package:attendance/screen/dashboard/dashboard_page.dart';
import 'package:attendance/screen/on_boarding/splash_screen/welcome_page.dart';
import 'package:attendance/screen/auth/login/login_page.dart';
import 'package:attendance/screen/on_boarding/splash_screen/splash_screen.dart';

class GoRoutSingleton {
  static final GoRoutSingleton _singleton = GoRoutSingleton._internal();

  factory GoRoutSingleton() {
    return _singleton;
  }

  GoRoutSingleton._internal();

  String? splashScreen = const SplashScreen().runtimeType.toString();
  String? welcomePage = const AuthPage().runtimeType.toString();
  String? loginPage = const LoginPage().runtimeType.toString();
  String? dashboard = const Dashboard().runtimeType.toString();
  String? loginWaiting = const LoginWaitingPage().runtimeType.toString();
}
