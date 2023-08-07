class GoRoutSingleton {
  static final GoRoutSingleton _singleton = GoRoutSingleton._internal();

  factory GoRoutSingleton() {
    return _singleton;
  }

  GoRoutSingleton._internal();
  String? homePage;
  String? welcomePage;
}
