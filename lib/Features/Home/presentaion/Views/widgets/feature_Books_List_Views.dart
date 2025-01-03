import 'package:bookly/Features/Home/presentaion/Mange/featured_Bookks_cubit/fetured_books_cubit.dart';
import 'package:bookly/Features/Home/presentaion/Views/widgets/custom_book_item.dart';
import 'package:bookly/core/Utils/app_routs.dart';
import 'package:bookly/core/errors/failuers.dart';
import 'package:bookly/core/widgets/Custom_loaging.dart';
import 'package:bookly/core/widgets/custom_failuer.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';

class FeatureBooksListViews extends StatelessWidget {
  const FeatureBooksListViews({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<FeturedBooksCubit, FeturedBooksState>(
        builder: (context, state) {
      if (state is FeturedBooksSucsess) {
        return SizedBox(
          height: MediaQuery.of(context).size.height * .3,
          child: ListView.builder(
              physics: const BouncingScrollPhysics(),
              itemCount: state.books.length,
              scrollDirection: Axis.horizontal,
              itemBuilder: (context, index) {
                return Padding(
                  padding: EdgeInsets.symmetric(horizontal: 7),
                  //i want to make loding indecator when the imge no return i show loding indcator else  i show cusyom image
                  child: GestureDetector(
                    onTap: () {
                      GoRouter.of(context).push(AppRouts.kBookDetalseView,
                          extra: state.books[index]);
                    },
                    child: CustomBookItem(
                      imageUrl:
                          state.books[index].volumeInfo!.imageLinks.thumbnail,
                    ),
                  ),
                );
              }),
        );
      } else if (state is FeturedBooksFailuers) {
        return CustomFailuer(erroeMessage: state.errorMessage);
      } else {
        return const CustomLoaging();
      }
    });
  }
}
