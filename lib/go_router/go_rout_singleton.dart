import 'package:attendance/screen/auth/auth_page%202.dart';
import 'package:attendance/screen/auth/auth_page.dart';
import 'package:attendance/screen/on_boarding/splash_screen/splash_screen.dart';

class GoRoutSingleton {
  static final GoRoutSingleton _singleton = GoRoutSingleton._internal();

  factory GoRoutSingleton() {
    return _singleton;
  }

  GoRoutSingleton._internal();

  String? splashScreen = const SplashScreen().runtimeType.toString();
  String? authPage = const AuthPage().runtimeType.toString();
  String? authPage2 = const AuthPage2().runtimeType.toString();
}
