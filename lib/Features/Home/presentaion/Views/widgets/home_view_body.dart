import 'package:bookly/Features/Home/presentaion/Views/widgets/bast_seller_list_view_item.dart';
import 'package:bookly/Features/Home/presentaion/Views/widgets/custom_app_bar.dart';
import 'package:bookly/Features/Home/presentaion/Views/widgets/feature_Books_List_Views.dart';
import 'package:bookly/core/Utils/Style.dart';
import 'package:flutter/material.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.symmetric(horizontal: 16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          CustomAppBAR(),
          FeatureBooksListViews(),
          SizedBox(
            height: 30,
          ),
          Text('Bast Saller', style: Styles.textStyle18),
          BastSallerListViewItem()
        ],
      ),
    );
  }
}
