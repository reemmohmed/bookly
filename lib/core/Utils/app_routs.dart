import 'package:bookly/Features/Home/data/Models/books_model/books_model.dart';
import 'package:bookly/Features/Home/data/repos/home_repo_imple.dart';
import 'package:bookly/Features/Home/presentaion/Mange/Semeller_Books_Cubit/semeller_books_cubit.dart';
import 'package:bookly/Features/Home/presentaion/Views/book_detalise_view.dart';
import 'package:bookly/Features/Home/presentaion/Views/home_view.dart';
import 'package:bookly/Features/Splash/Presentaton/Views/splash_view.dart';
import 'package:bookly/Features/search/presentation/Views/search_view.dart';
import 'package:bookly/core/Utils/server_lucator.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';

abstract class AppRouts {
  static const kHomeView = '/HomeNiew';
  static const kBookDetalseView = '/bookdetalseView';
  static const ksearchView = '/searchView';

  static final router = GoRouter(
    routes: [
      GoRoute(
        path: '/',
        builder: (context, state) => const SplashView(),
      ),
      GoRoute(
        path: kHomeView,
        builder: (context, state) => const HomeView(),
      ),
      GoRoute(
        path: kBookDetalseView,
        builder: (context, state) => BlocProvider(
            create: (context) => SemellerBooksCubit(getIt.get<HomeRepoImple>()),
            child: BookDetaliseView(
              booksModel: state.extra as BooksModel,
            )),
      ),
      GoRoute(
        path: ksearchView,
        builder: (context, state) => const SearchView(),
      ),
    ],
  );
}
