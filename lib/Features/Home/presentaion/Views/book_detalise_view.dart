import 'package:bookly/Features/Home/data/Models/books_model/books_model.dart';
import 'package:bookly/Features/Home/presentaion/Mange/Semeller_Books_Cubit/semeller_books_cubit.dart';
import 'package:bookly/Features/Home/presentaion/Views/widgets/detalse_view_body.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class BookDetaliseView extends StatefulWidget {
  const BookDetaliseView({super.key, required this.booksModel});
  final BooksModel booksModel;
  @override
  State<BookDetaliseView> createState() => _BookDetaliseViewState();
}

class _BookDetaliseViewState extends State<BookDetaliseView> {
  @override
  void initState() {
    BlocProvider.of<SemellerBooksCubit>(context).featuerSemelerBooks(
        categery: widget.booksModel.volumeInfo!.categories![0]);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: SafeArea(child: BookDetalseViewBody()),
    );
  }
}
