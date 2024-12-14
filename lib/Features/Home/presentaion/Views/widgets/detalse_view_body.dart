import 'package:flutter/material.dart';

import 'custom_book_detase_app_bar.dart';

class BookDetalseViewBody extends StatelessWidget {
  const BookDetalseViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.symmetric(horizontal: 30),
      child: Column(
        children: [CustomBookDetalseAppBar()],
      ),
    );
  }
}
