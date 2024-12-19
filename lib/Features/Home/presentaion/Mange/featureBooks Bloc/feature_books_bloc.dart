import 'package:bloc/bloc.dart';
import 'package:bookly/Features/Home/data/Models/books_model/books_model.dart';
import 'package:equatable/equatable.dart';

part 'feature_books_event.dart';
part 'feature_books_state.dart';

class FeatureBooksBloc extends Bloc<FeatureBooksEvent, FeatureBooksState> {
  FeatureBooksBloc() : super(FeatureBooksInitial()) {
    on<FeatureBooksEvent>((event, emit) {
      // TODO: implement event handler
    });
  }
}
