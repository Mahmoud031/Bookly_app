import 'package:flutter_application_1/features/home/presentation/views/home_view.dart';
import 'package:flutter_application_1/features/splash/presentation/views/splash_view.dart';
import 'package:go_router/go_router.dart';

abstract class AppRouter {
  static const kHomeView = '/homeView';
  static final router = GoRouter(routes: [
    GoRoute(
      path: '/',  // the start page
      builder: (context, state) => const SplashView(),
    ),
    GoRoute(
      path: kHomeView,
      builder: (context, state) => const HomeView(),
    )
  ]);
}
