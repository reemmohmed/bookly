import 'package:bookly/Features/Home/data/repos/Home_repo.dart';
import 'package:bookly/Features/Home/data/repos/home_repo_imple.dart';
import 'package:bookly/core/Utils/api_serves.dart';
import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';

final getIt = GetIt.instance;
void setUpServeceLocator() {
  getIt.registerSingleton<ApiServes>(ApiServes(Dio()));
  getIt.registerSingleton<HomeRepoImple>(HomeRepoImple(
    getIt.get<ApiServes>(),
  ));
}
