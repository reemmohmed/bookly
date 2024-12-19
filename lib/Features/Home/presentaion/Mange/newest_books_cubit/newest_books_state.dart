part of 'newest_books_cubit.dart';

sealed class NewestBooksState extends Equatable {
  const NewestBooksState();

  @override
  List<Object> get props => [];
}

final class NewestBooksInitial extends NewestBooksState {}

final class NewestBooksLoading extends NewestBooksState {}

final class NewestBooksFailuer extends NewestBooksState {
  final String errorMessage;

  const NewestBooksFailuer(this.errorMessage);
}

final class NewestBooksSucsess extends NewestBooksState {
  final List<BooksModel> books;

  const NewestBooksSucsess(this.books);
}
