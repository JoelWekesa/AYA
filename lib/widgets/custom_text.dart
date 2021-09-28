import 'package:aya_mobile/utils/MLColors.dart';
import 'package:flutter/material.dart';

class Customtext extends StatelessWidget {
  final String text;
  final double fontSize;
  final Color colors;

  Customtext({
    required this.text,
    required this.fontSize,
    required this.colors,
  });
  @override
  Widget build(BuildContext context) {
    return Text(text,
        style: TextStyle(
          fontSize: fontSize,
          color: colors,
        ));
  }
}
