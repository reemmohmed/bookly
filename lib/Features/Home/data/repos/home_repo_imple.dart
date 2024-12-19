import 'package:bookly/Features/Home/data/Models/books_model/books_model.dart';
import 'package:bookly/Features/Home/data/repos/Home_repo.dart';
import 'package:bookly/core/Utils/api_serves.dart';
import 'package:bookly/core/errors/failuers.dart';
import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';

class HomeRepoImple implements HomeRepo {
  final ApiServes apiServes;

  HomeRepoImple(this.apiServes);
  @override
  Future<Either<Failuers, List<BooksModel>>> feachNewsSeller() async {
    try {
      var data = await apiServes.get(
          endpoint:
              'volumes?q=subject:Programming&Filtraing=free_ebooks&Storge=newest');
      List<BooksModel> books = [];
      for (var item in data['items']) {
        books.add(BooksModel.fromJson(item));
      }
      return right(books);
    } catch (e) {
      if (e is DioException) {
        return left(ServerFailuer.fromDioException(e));
      }
      return left(ServerFailuer(e.toString()));
    }
  }

  @override
  Future<Either<Failuers, List<BooksModel>>> feachFeatcherBooks() async {
    try {
      var data = await apiServes.get(
          endpoint: 'volumes?q=subject:Programming&Filtraing=free_ebooks');
      List<BooksModel> books = [];
      for (var item in data['items']) {
        books.add(BooksModel.fromJson(item));
      }
      return right(books);
    } catch (e) {
      if (e is DioException) {
        return left(ServerFailuer.fromDioException(e));
      }
      return left(ServerFailuer(e.toString()));
    }
  }
}
