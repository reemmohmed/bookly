import 'package:bloc/bloc.dart';
import 'package:bookly/Features/Home/data/Models/books_model/books_model.dart';
import 'package:bookly/Features/Home/data/repos/Home_repo.dart';
import 'package:equatable/equatable.dart';

part 'fetured_books_state.dart';

class FeturedBooksCubit extends Cubit<FeturedBooksState> {
  FeturedBooksCubit(this.homeRepo) : super(FeturedBooksInitial());
  final HomeRepo homeRepo;

  Future<void> featuerBooks() async {
    emit(FeturedBooksLoding());
    var result = await homeRepo.feachFeatcherBooks();
    result.fold((failuers) {
      emit(FeturedBooksFailuers(failuers.errorMessage));
    }, (books) {
      emit(FeturedBooksSucsess(books));
    });
  }
}
