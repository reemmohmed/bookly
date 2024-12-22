import 'package:bookly/Features/Home/presentaion/Mange/Semeller_Books_Cubit/semeller_books_cubit.dart';
import 'package:bookly/Features/Home/presentaion/Views/widgets/custom_book_item.dart';
import 'package:bookly/core/widgets/Custom_loaging.dart';
import 'package:bookly/core/widgets/custom_failuer.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class SimellerBooksListView extends StatelessWidget {
  const SimellerBooksListView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<SemellerBooksCubit, SemellerBooksState>(
      builder: (context, state) {
        if (state is SemellerBooksSucsess) {
          return SizedBox(
            height: MediaQuery.of(context).size.height * .15,
            child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemBuilder: (context, index) {
                  return const Padding(
                    padding: EdgeInsets.symmetric(horizontal: 5),
                    child: CustomBookItem(
                      imageUrl:
                          'https://buffer.com/library/content/images/size/w1200/2023/10/free-images.jpg',
                    ),
                  );
                }),
          );
        } else if (state is SemellerBooksFailuers) {
          return CustomFailuer(erroeMessage: state.errorMessage);
        } else {
          return const CupertinoLoding();
        }
      },
    );
  }
}
