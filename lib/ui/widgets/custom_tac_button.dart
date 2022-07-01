import '../../shared/theme.dart';
import 'package:flutter/material.dart';

class CustomTacButton extends StatelessWidget {
  final String text;
  final EdgeInsets margin;
  const CustomTacButton(
      {Key? key, required this.text, this.margin = EdgeInsets.zero})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      margin: margin,
      child: Text(
        text,
        style: greyTextStyle.copyWith(
            fontSize: 16,
            fontWeight: light,
            decoration: TextDecoration.underline),
      ),
    );
  }
}
