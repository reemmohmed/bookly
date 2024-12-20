import 'package:bookly/core/Utils/assets_data.dart';
import 'package:flutter/material.dart';

class CustomBookItem extends StatelessWidget {
  const CustomBookItem({super.key, required this.imageUrl});
  final String imageUrl;
  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      //2.7/4
      aspectRatio: 3.2 / 4,
      child: Container(
        decoration: BoxDecoration(
            image: DecorationImage(
                image: NetworkImage(imageUrl),
                // image: Image.network(
                //   AssetsData.test,
                // ),
                fit: BoxFit.fill),
            borderRadius: BorderRadius.circular(16)),
      ),
    );
  }
}
