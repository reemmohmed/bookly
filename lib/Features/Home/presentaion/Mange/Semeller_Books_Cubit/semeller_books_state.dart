part of 'semeller_books_cubit.dart';

sealed class SemellerBooksState extends Equatable {
  const SemellerBooksState();

  @override
  List<Object> get props => [];
}

final class SemellerBooksInitial extends SemellerBooksState {}

final class SemellerBooksLoading extends SemellerBooksState {}

final class SemellerBooksFailuers extends SemellerBooksState {
  final String errorMessage;

  const SemellerBooksFailuers(this.errorMessage);
}

final class SemellerBooksSucsess extends SemellerBooksState {
  final List<BooksModel> books;

  const SemellerBooksSucsess(this.books);
}
