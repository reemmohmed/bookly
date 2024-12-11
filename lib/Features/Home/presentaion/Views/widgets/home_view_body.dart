import 'package:bookly/Features/Home/presentaion/Views/widgets/custom_app_bar.dart';
import 'package:bookly/Features/Home/presentaion/Views/widgets/feature_Books_List_Views.dart';
import 'package:bookly/core/Utils/Style.dart';
import 'package:bookly/core/Utils/assets_data.dart';
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

class BastSallerListViewItem extends StatelessWidget {
  const BastSallerListViewItem({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        SizedBox(
          height: 120,
          child: AspectRatio(
            aspectRatio: 2.5 / 4,
            child: Container(
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(16),
                  image: const DecorationImage(
                      image: AssetImage(
                    AssetsData.test,
                  ))),
            ),
          ),
        ),
        const SizedBox(
          width: 20,
        ),
        Column(
          children: [
            SizedBox(
              width: MediaQuery.of(context).size.width * .5,
              child: const Text(
                'Harry Botter And The Gloaple Of Free',
                maxLines: 2,
                overflow: TextOverflow.ellipsis,
                style: Styles.textStyle18,
              ),
            )
          ],
        )
      ],
    );
  }
}
