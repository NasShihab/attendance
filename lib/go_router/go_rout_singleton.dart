class GoRoutSingleton {
  static final GoRoutSingleton _singleton = GoRoutSingleton._internal();

  factory GoRoutSingleton() {
    return _singleton;
  }

  GoRoutSingleton._internal();
  String? homePage;
  String? splashScreen;
  String? authPage;
  String? authPage2;
}
