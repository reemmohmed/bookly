import 'package:bookly/Features/Home/presentaion/Views/widgets/custom_book_item.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:shimmer/shimmer.dart';

class CustomLoaging extends StatelessWidget {
  const CustomLoaging({super.key});

  @override
  Widget build(BuildContext context) {
    return const Center(child: CircularProgressIndicator());
  }
}

class Shimmar extends StatelessWidget {
  const Shimmar({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height * .3,
      child: Shimmer.fromColors(
          baseColor: Colors.white,
          highlightColor: Colors.yellow,
          child: CustomBookItem(
            imageUrl: '',
          )),
    );
  }
}

class CupertinoLoding extends StatelessWidget {
  const CupertinoLoding({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: CupertinoActivityIndicator(
        radius: 15.0,
      ),
    );
  }
}
