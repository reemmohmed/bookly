import 'package:flutter/material.dart';

import '../../../../../core/Utils/Style.dart';
import '../../../../../core/Utils/assets_data.dart';

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
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              width: MediaQuery.of(context).size.width * .5,
              child: const Text(
                'Harry Botter And The Gloaple Of Free',
                maxLines: 2,
                overflow: TextOverflow.ellipsis,
                style: Styles.textStyle18,
              ),
            ),
            const SizedBox(
              height: 3,
            ),
            const Text(
              'J .K.Row King',
              style: Styles.textStyle14,
            ),
            const SizedBox(
              height: 3,
            ),
            Row(
              children: [
                Text(
                  '999',
                  style:
                      Styles.textStyle18.copyWith(fontWeight: FontWeight.bold),
                )
              ],
            ),
          ],
        )
      ],
    );
  }
}
