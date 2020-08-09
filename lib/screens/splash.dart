import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:scoped_model/scoped_model.dart';
import 'package:slh_channeling_app/scoped-model/main.dart';

class SplashScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Scaffold(
          resizeToAvoidBottomInset: false,
          body: Center(
            child: Image.asset('assets/images/splash.png'),
          )),
    );
  }
}
//SvgPicture.asset("assets/images/splash_screen_logo.svg")
//Image.asset("assets/images/splash.png")
