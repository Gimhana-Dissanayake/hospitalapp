import 'package:flutter/material.dart';

class TitlePrimary extends StatelessWidget {
  final String text;

  TitlePrimary({@required this.text});

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: TextStyle(
        fontWeight: FontWeight.bold,
        fontSize: 26,
        color: Theme.of(context).primaryColorDark,
      ),
    );
  }
}
