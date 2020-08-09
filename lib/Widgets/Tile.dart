import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:hexcolor/hexcolor.dart';

enum TileSize {
  medium,
  small,
}

class Tile extends StatelessWidget {
  final TileSize type;
  final String imagePath;
  final String text;
  final double imageTopMargin;
  final Function callBack;

  Tile({
    @required this.type,
    @required this.imagePath,
    @required this.text,
    @required this.imageTopMargin,
    @required this.callBack,
  });

  @override
  Widget build(BuildContext context) {
    var ContainerWidth = type.index == 0 ? 160.0 : 120.0;
    var ContainerHeight = type.index == 0 ? 151.48 : 117.05;

    return Container(
      width: ContainerWidth,
      height: ContainerHeight,
      child: InkWell(
        onTap: callBack,
        child: Card(
          elevation: 5,
          color: Hexcolor('#E4DCFF'),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10.0),
          ),
          child: Container(
            child: Column(
              children: <Widget>[
                Expanded(
                  flex: type.index == 0 ? 4 : 20,
                  child: Container(
                    margin: EdgeInsets.only(
                      top: imageTopMargin,
                    ),
                    child: SvgPicture.asset(
                      imagePath,
                    ),
                  ),
                ),
                Expanded(
                  flex: type.index == 0 ? 1 : 15,
                  child: Container(
                    margin: EdgeInsets.only(bottom: 5, top: 5),
                    child: Container(
                      child: Center(
                          child: Text(
                        text,
                        textAlign: TextAlign.center,
                        style: TextStyle(fontSize: 13, letterSpacing: 0.15),
                      )),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
//Text(
//imageText,
//style: TextStyle(
//fontSize: size == "M" ? 15 : 13,
//letterSpacing: 0.15,
//fontWeight: FontWeight.w500),
//),
