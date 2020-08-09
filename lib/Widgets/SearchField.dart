import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';

class SearchField extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Theme(
      data: Theme.of(context).copyWith(
        cursorColor: Colors.white,
        hintColor: Colors.transparent,
      ),
      child: Container(
        color: Colors.transparent,
        child: Container(
          height: 30,
          width: 287,
          decoration: new BoxDecoration(
            color: Colors.transparent,
            borderRadius: BorderRadius.all(
              Radius.circular(40.0),
            ),
            boxShadow: [
              BoxShadow(
                color: Colors.grey.withOpacity(0.5),
                spreadRadius: 3,
                blurRadius: 5,
                offset: Offset(0, 5), // changes position of shadow
              ),
            ],
          ),
          child: TextField(
            textAlign: TextAlign.center,
            style: TextStyle(color: Colors.white, fontSize: 12),
            decoration: InputDecoration(
              contentPadding: EdgeInsets.fromLTRB(20.0, 10.0, 20.0, 10.0),
              focusedBorder: OutlineInputBorder(
                borderRadius: BorderRadius.all(Radius.circular(40.0)),
                borderSide: BorderSide(
                  color: Colors.transparent,
                ),
              ),
              border: OutlineInputBorder(
                borderRadius: BorderRadius.all(Radius.circular(40.0)),
                borderSide: BorderSide(
                  color: Colors.transparent,
                ),
              ),
              prefixIcon: Icon(
                Icons.search,
                textDirection: TextDirection.rtl,
                color: Color.fromARGB(
                  47,
                  92,
                  92,
                  92,
                ),
                size: 20,
              ),
              hintStyle: TextStyle(
                  color: Color.fromARGB(
                    47,
                    92,
                    92,
                    92,
                  ),
                  fontFamily: "Roboto"),
              filled: true,
              fillColor: Hexcolor('#E4DCFF'),
              hintText: 'Type and search consultants',
            ),
          ),
        ),
      ),
    );
  }
}
