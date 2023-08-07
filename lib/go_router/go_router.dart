import 'package:attendance/go_router/go_rout_singleton.dart';
import 'package:attendance/screen/home_page/home_page.dart';
import 'package:attendance/screen/on_boarding/welcome_page.dart';
import 'package:go_router/go_router.dart';

GoRouter router = GoRouter(
  initialLocation: '/${GoRoutSingleton().welcomePage}',
  routes: [
    GoRoute(
      path: '/${GoRoutSingleton().welcomePage}',
      builder: (context, state) => const WelcomePage(),
    ),
    GoRoute(
      path: '/${GoRoutSingleton().homePage}',
      builder: (context, state) => const HomePage(),
    ),
  ],
);
