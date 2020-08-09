import 'package:flutter/material.dart';

class TextInputField extends StatelessWidget {
  final Function onChanged;
  final String hintText;
  final Icon prefixIcon;

  TextInputField(
      {@required this.onChanged, @required this.hintText, this.prefixIcon});

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      keyboardType: TextInputType.phone,
      maxLines: 1,
      onChanged: onChanged,
      decoration: InputDecoration(
        fillColor: Colors.white,
        hintText: hintText,
        prefixIcon: prefixIcon != null ? Icon(Icons.phone_iphone) : Container(),
        border: OutlineInputBorder(
          borderSide: BorderSide(color: Theme.of(context).primaryColor),
          borderRadius: BorderRadius.all(
            Radius.circular(8.0),
          ),
        ),
      ),
    );
  }
}
