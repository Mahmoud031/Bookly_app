import 'package:flutter_application_1/features/home/presentation/views/book_details_view.dart';
import 'package:flutter_application_1/features/home/presentation/views/home_view.dart';
import 'package:flutter_application_1/features/splash/presentation/views/splash_view.dart';
import 'package:go_router/go_router.dart';

abstract class AppRouter {
  static const kHomeView = '/homeView';
  static const kBookDetailsView = '/bookDetailsView';
  static final router = GoRouter(routes: [
    GoRoute(
      path: '/',  // the start page
      builder: (context, state) => const SplashView(),
    ),
    GoRoute(
      path: kHomeView,
      builder: (context, state) => const HomeView(),
    ),
    GoRoute(
      path: kBookDetailsView,
      builder: (context, state) => const BookDetailsView(),
    )
  ]);
}
