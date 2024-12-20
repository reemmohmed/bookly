import 'package:bookly/Features/Home/data/repos/home_repo_imple.dart';
import 'package:bookly/Features/Home/presentaion/Mange/featured_Bookks_cubit/fetured_books_cubit.dart';
import 'package:bookly/Features/Home/presentaion/Mange/newest_books_cubit/newest_books_cubit.dart';
import 'package:bookly/Features/Splash/Presentaton/Views/Widgets/constant.dart';
import 'package:bookly/core/Utils/app_routs.dart';
import 'package:bookly/core/Utils/server_lucator.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  setUpServeceLocator();
  runApp(const BooklyApp());
}

class BooklyApp extends StatelessWidget {
  const BooklyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) => FeturedBooksCubit(
            getIt.get<HomeRepoImple>(),
          )..featuerBooks(),
        ),
        BlocProvider(
            create: (context) => NewestBooksCubit(getIt.get<HomeRepoImple>()))
      ],
      child: MaterialApp.router(
        routerConfig: AppRouts.router,
        debugShowCheckedModeBanner: false,
        theme: ThemeData.dark().copyWith(
            scaffoldBackgroundColor: kPrimaryColor,
            textTheme:
                GoogleFonts.montserratTextTheme(ThemeData.dark().textTheme)),
      ),
    );
  }
}
