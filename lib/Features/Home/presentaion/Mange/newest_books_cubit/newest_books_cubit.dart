import 'package:bloc/bloc.dart';
import 'package:bookly/Features/Home/data/Models/books_model/books_model.dart';
import 'package:bookly/Features/Home/data/repos/Home_repo.dart';
import 'package:equatable/equatable.dart';

part 'newest_books_state.dart';

class NewestBooksCubit extends Cubit<NewestBooksState> {
  NewestBooksCubit(this.homeRepo) : super(NewestBooksInitial());
  final HomeRepo homeRepo;
  Future<void> featchNewsestBooks() async {
    var result = await homeRepo.feachNewsSeller();
    result.fold((failuers) {
      emit(NewestBooksFailuer(failuers.errorMessage));
    }, (books) {
      emit(NewestBooksSucsess(books));
    });
  }
}
