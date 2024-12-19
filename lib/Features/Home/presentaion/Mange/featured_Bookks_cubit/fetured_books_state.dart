part of 'fetured_books_cubit.dart';

sealed class FeturedBooksState extends Equatable {
  const FeturedBooksState();

  @override
  List<Object> get props => [];
}

final class FeturedBooksInitial extends FeturedBooksState {}

final class FeturedBooksLoding extends FeturedBooksState {}

final class FeturedBooksFailuers extends FeturedBooksState {
  final String errorMessage;

  const FeturedBooksFailuers(this.errorMessage);
}

final class FeturedBooksSucsess extends FeturedBooksState {
  final List<BooksModel> books;

  const FeturedBooksSucsess(this.books);
}
