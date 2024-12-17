import 'package:bookly/Features/Home/data/Models/books_model/books_model.dart';
import 'package:bookly/core/errors/failuers.dart';
import 'package:dartz/dartz.dart';

abstract class HomeRepo {
  Future<Either<Failuers, List<BooksModel>>> feachFeatcherBooks();
  Future<Either<Failuers, List<BooksModel>>> feachBastSeller();
}
