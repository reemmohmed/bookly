import 'package:bookly/Features/Home/presentaion/Views/widgets/custom_book_item.dart';
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
            padding: EdgeInsets.symmetric(horizontal: wight * .17),
            child: const CustomBookItem(),
          ),
        ],
      ),
    );
  }
}
