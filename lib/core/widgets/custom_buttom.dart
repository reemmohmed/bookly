import 'package:bookly/core/Utils/Style.dart';
import 'package:flutter/material.dart';

class CustomButtom extends StatelessWidget {
  const CustomButtom(
      {super.key,
      required this.bacgroundColor,
      required this.textColor,
      required this.borderRadius,
      required this.titel,
      this.fontsize,
      this.onPressed});
  final Color bacgroundColor;
  final Color textColor;
  final String titel;
  final void Function()? onPressed;
  final double? fontsize;
  final BorderRadius? borderRadius;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 48,
      child: TextButton(
          style: TextButton.styleFrom(
              backgroundColor: bacgroundColor,
              shape: RoundedRectangleBorder(
                  borderRadius: borderRadius ?? BorderRadius.circular(16))),
          onPressed: onPressed,
          child: Text(
            titel,
            style: Styles.textStyle18
                .copyWith(color: textColor, fontSize: fontsize),
          )),
    );
  }
}
