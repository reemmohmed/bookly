import 'package:bookly/Features/Home/data/Models/books_model/books_model.dart';
import 'package:bookly/Features/Home/presentaion/Mange/newest_books_cubit/newest_books_cubit.dart';
import 'package:bookly/Features/Home/presentaion/Views/widgets/bast_seller_list_view_item.dart';
import 'package:bookly/core/widgets/Custom_loaging.dart';
import 'package:bookly/core/widgets/custom_failuer.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class BastSellerListView extends StatelessWidget {
  const BastSellerListView({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<NewestBooksCubit, NewestBooksState>(
      builder: (context, state) {
        if (state is NewestBooksSucsess) {
          return ListView.builder(
              physics: const NeverScrollableScrollPhysics(),
              padding: EdgeInsets.zero,
              itemCount: state.books.length,
              itemBuilder: (context, inddex) {
                return Padding(
                  padding: const EdgeInsets.symmetric(vertical: 10),
                  child: BookListViewItem(
                    booksModel: state.books[inddex],
                  ),
                );
              });
        } else if (state is NewestBooksFailuer) {
          return CustomFailuer(erroeMessage: state.errorMessage);
        } else {
          return const CustomLoaging();
        }
      },
    );
  }
}
