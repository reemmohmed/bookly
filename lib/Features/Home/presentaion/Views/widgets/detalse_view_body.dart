import 'package:bookly/Features/Home/presentaion/Views/widgets/book_rating.dart';
import 'package:bookly/Features/Home/presentaion/Views/widgets/custom_book_item.dart';
import 'package:bookly/core/Utils/Style.dart';
import 'package:flutter/material.dart';

import 'custom_book_detase_app_bar.dart';

class BookDetalseViewBody extends StatelessWidget {
  const BookDetalseViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    var wight = MediaQuery.of(context).size.width;
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 30),
      child: Column(
        children: [
          const CustomBookDetalseAppBar(),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: wight * .2),
            child: const CustomBookItem(),
          ),
          const SizedBox(
            height: 43,
          ),
          Text(
            'The Jungel Books',
            style: Styles.textStyle30.copyWith(fontWeight: FontWeight.bold),
          ),
          const SizedBox(
            height: 6,
          ),
          Opacity(
            opacity: .7,
            child: Text(
              'The JunGel Books',
              style: Styles.textStyle18.copyWith(
                  fontStyle: FontStyle.italic, fontWeight: FontWeight.w500),
            ),
          ),
          const BookRating(
            mainAxisAlignment: MainAxisAlignment.center,
          )
        ],
      ),
    );
  }
}
