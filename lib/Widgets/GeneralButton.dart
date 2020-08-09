import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';

enum ButtonSize {
  large,
  medium,
  small,
}

class GeneralButton extends StatelessWidget {
  final ButtonSize type;
  final String buttonText;
  final double boderRadius;
  Function callback;

  GeneralButton(
      {@required this.type,
      @required this.buttonText,
      @required this.boderRadius,
      @required this.callback});

  @override
  Widget build(BuildContext context) {
    return ButtonTheme(
      minWidth: type.index == 0 ? 158 : type.index == 1 ? 112 : 62,
      height: type.index == 0 ? 48 : type.index == 1 ? 34.03 : 18,
      child: RaisedButton(
        elevation: 5,
        materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(boderRadius),
        ),
        color: Hexcolor('#413E98'),
        child: Text(
          buttonText,
          style: TextStyle(
              color: Colors.white,
              fontSize: type.index == 0 ? 20 : type.index == 1 ? 16 : 8,
              letterSpacing: 0.15,
              fontWeight: type.index == 0 ? FontWeight.w300 : FontWeight.w500,
              fontFamily: 'Roboto'),
        ),
        onPressed: callback,
      ),
    );
  }
}
