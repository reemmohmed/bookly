import 'package:bookly/core/Utils/Style.dart';
import 'package:flutter/material.dart';

class CustomFailuer extends StatelessWidget {
  const CustomFailuer({super.key, required this.erroeMessage});
  final String erroeMessage;
  @override
  Widget build(BuildContext context) {
    return Text(
      erroeMessage,
      style: Styles.textStyle18,
    );
  }
}
