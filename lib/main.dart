import 'package:attendance/core/theme_data/theme_data.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'core/my_routes/my_routes.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(428, 926),
      builder: (_, child) => MaterialApp(
        debugShowCheckedModeBanner: false,
        theme: lightThemeData(),
        darkTheme: darkThemeData(),
        themeMode: ThemeMode.system,
        routes: myRoutes,
        initialRoute: '/',
        // routerDelegate: router.routerDelegate,
        // routeInformationParser: router.routeInformationParser,
        // routeInformationProvider: router.routeInformationProvider,
      ),
    );
  }
}
//flutter build apk --release --split-per-abi
