part of 'feature_books_bloc.dart';

sealed class FeatureBooksState extends Equatable {
  const FeatureBooksState();

  @override
  List<Object> get props => [];
}

final class FeatureBooksInitial extends FeatureBooksState {}

final class FeatureBooksLoding extends FeatureBooksState {}

final class FeatureBooksFailuer extends FeatureBooksState {
  final String errorMessage;

  const FeatureBooksFailuer(this.errorMessage);
}

final class FeatureBooksScsess extends FeatureBooksState {
  final List<BooksModel> books;

  const FeatureBooksScsess(this.books);
}
