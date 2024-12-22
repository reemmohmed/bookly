import 'package:bloc/bloc.dart';
import 'package:bookly/Features/Home/data/Models/books_model/books_model.dart';
import 'package:bookly/Features/Home/data/repos/Home_repo.dart';
import 'package:equatable/equatable.dart';

part 'semeller_books_state.dart';

class SemellerBooksCubit extends Cubit<SemellerBooksState> {
  SemellerBooksCubit(this.homeRepo) : super(SemellerBooksInitial());
  final HomeRepo homeRepo;
  Future<void> featuerSemelerBooks({required String categery}) async {
    emit(SemellerBooksLoading());
    var result = await homeRepo.feacheSemellerBooks(categery: categery);
    result.fold((failuers) {
      emit(SemellerBooksFailuers(failuers.errorMessage));
    }, (books) {
      emit(SemellerBooksSucsess(books));
    });
  }
}
