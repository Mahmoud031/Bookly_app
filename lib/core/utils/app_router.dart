import 'package:flutter_application_1/core/utils/service_locator.dart';
import 'package:flutter_application_1/features/home/data/models/book_model/book_model.dart';
import 'package:flutter_application_1/features/home/data/repos/home_repo_impl.dart';
import 'package:flutter_application_1/features/home/presentation/manager/similar_books_cubit/similar_books_cubit.dart';
import 'package:flutter_application_1/features/home/presentation/views/book_details_view.dart';
import 'package:flutter_application_1/features/home/presentation/views/home_view.dart';
import 'package:flutter_application_1/features/search/presentation/views/search_view.dart';
import 'package:flutter_application_1/features/splash/presentation/views/splash_view.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';

abstract class AppRouter {
  static const kHomeView = '/homeView';
  static const kBookDetailsView = '/bookDetailsView';
  static const kSearchView = '/searchView';
  static final router = GoRouter(routes: [
    GoRoute(
      path: '/', // the start page
      builder: (context, state) => const SplashView(),
    ),
    GoRoute(
      path: kSearchView, // the start page
      builder: (context, state) => const SearchView(),
    ),
    GoRoute(
      path: kHomeView,
      builder: (context, state) => const HomeView(),
    ),
    GoRoute(
      path: kBookDetailsView,
      builder: (context, state) => BlocProvider(
        create: (context) => SimilarBooksCubit(getIt.get<HomeRepoImpl>()),
        child:  BookDetailsView(bookModel: state.extra as BookModel,),
      ),
    )
  ]);
}
