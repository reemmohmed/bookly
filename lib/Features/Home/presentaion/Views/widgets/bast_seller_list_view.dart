import 'package:bookly/Features/Home/presentaion/Views/widgets/bast_seller_list_view_item.dart';
import 'package:flutter/material.dart';

class BastSellerListView extends StatelessWidget {
  const BastSellerListView({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        physics: const NeverScrollableScrollPhysics(),
        padding: EdgeInsets.zero,
        itemCount: 10,
        itemBuilder: (context, inddex) {
          return const Padding(
            padding: EdgeInsets.symmetric(vertical: 10),
            child: BookListViewItem(),
          );
        });
  }
}
