import 'package:bookly/Features/Home/data/Models/books_model/books_model.dart';
import 'package:bookly/Features/Home/presentaion/Views/widgets/books_detales_section.dart';
import 'package:bookly/Features/Home/presentaion/Views/widgets/simeller_books_section.dart';
import 'package:flutter/material.dart';

import 'custom_book_detase_app_bar.dart';

class BookDetalseViewBody extends StatelessWidget {
  const BookDetalseViewBody({super.key, required this.booksModel});
  final BooksModel booksModel;
  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      slivers: [
        SliverFillRemaining(
          hasScrollBody: false,
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 30),
            child: Column(
              children: [
                const CustomBookDetalseAppBar(),
                BooksDetalesSection(
                  books: booksModel,
                ),
                const Expanded(
                  child: SizedBox(
                    height: 50,
                  ),
                ),
                const SimellerBooksSection(),
                const SizedBox(
                  height: 40,
                ),
              ],
            ),
          ),
        )
      ],
    );
  }
}
