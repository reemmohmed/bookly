import 'package:bookly/core/Utils/assets_data.dart';
import 'package:bookly/core/widgets/Custom_loaging.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CustomBookItem extends StatelessWidget {
  const CustomBookItem({super.key, required this.imageUrl});
  final String imageUrl;
  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(16),
      child: AspectRatio(
          //2.7/4
          aspectRatio: 3.2 / 4,
          child: CachedNetworkImage(
              placeholder: (context, url) => const CupertinoActivityIndicator(
                    radius: 15.0, // حجم المؤشر
                  ),
              // CustomLoaging(),
              errorWidget: (context, url, error) => const Icon(Icons.error),
              fit: BoxFit.fill,
              imageUrl: imageUrl)),
    );
  }
}
