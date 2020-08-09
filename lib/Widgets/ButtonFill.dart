import 'package:flutter/material.dart';

class ButtonFill extends StatelessWidget {
  final String title;
  final Function pressed;

  ButtonFill({@required this.title, @required this.pressed});

  @override
  Widget build(BuildContext context) {
    return ButtonTheme(
      minWidth: MediaQuery.of(context).size.width,
      height: 55.0,
      child: RaisedButton(
        onPressed: pressed,
        child: Text(
          title,
          style: TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.bold,
            fontSize: 18.0,
          ),
        ),
        color: Theme.of(context).primaryColor,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(8.0),
        ),
      ),
    );
    ;
  }
}
