import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:scoped_model/scoped_model.dart';
import 'package:slh_channeling_app/scoped-model/main.dart';

class AboutUsScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    const svgimg = 'assets/images/facebook.svg';
    var width = MediaQuery.of(context).size.width;
    var height = MediaQuery.of(context).size.height;
    double c_width = MediaQuery.of(context).size.width;
    var widthFactor = width / 414;
    var heightFactor = height / 763;

    List<Widget> value = [
      Container(
        child: Image.asset('assets/images/abtUs2.jpg'),
      ),
      Container(
        child: Image.asset('assets/images/abtUs3.jpg'),
      ),
      Container(
        child: Image.asset('assets/images/abtUs4.jpg'),
      ),
      Container(
        child: Image.asset('assets/images/abtUs5.jpg'),
      ),
    ];

    return Scaffold(
      appBar: AppBar(
        elevation: 0.0,
        backgroundColor: Hexcolor('#E4DCFF'),
        automaticallyImplyLeading: true,
        leading: IconButton(
          icon: Icon(
            Icons.arrow_back_ios,
            color: Hexcolor('#413E98'),
          ),
        ),
        title: Center(
          child: Text(
            'About us',
            style: TextStyle(
                color: Hexcolor('#413E98'),
                fontWeight: FontWeight.w500,
                fontSize: 16,
                letterSpacing: 0.15,
                fontFamily: 'Roboto'),
          ),
        ),
        actions: <Widget>[
          IconButton(
            icon: Icon(
              Icons.notifications,
              color: Hexcolor('#413E98'),
            ),
          )
        ],
      ),
      body: Column(
        children: <Widget>[
          Container(
            margin: EdgeInsets.only(top: 17 * heightFactor),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Column(
                  children: <Widget>[
                    Container(
                      height: 225 * heightFactor,
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(16.0),
                        child: Image.asset(
                            'assets/images/aboutus/about_us_main.png'),
                      ),
                    ),
                    Container(
                      padding: EdgeInsets.only(
                          top: 9 * heightFactor,
                          left: 21 * widthFactor,
                          right: 21 * widthFactor),
                      width: c_width,
                      child: new Column(
                        children: <Widget>[
                          new Text(
                            "Southern Lanka Hospitals, inaugurated in January 2019, is a healthcare center whichaims to provide you something more than a service. We hope to bring to you a complete experience of healing, through precise, coordinated and experienced care. Read more...",
                            textAlign: TextAlign.justify,
                            style: TextStyle(fontSize: 14),
                          ),
                        ],
                      ),
                    )
                  ],
                )
              ],
            ),
          ),
          Container(
            margin:
                EdgeInsets.only(left: 21 * widthFactor, top: 30 * heightFactor),
            child: Row(
              children: <Widget>[
                Text(
                  "Gallery",
                  style: TextStyle(
                    color: Hexcolor('#1F3A6F'),
                    fontSize: 16,
                  ),
                )
              ],
            ),
          ),
          Expanded(
            child: Container(
              margin: EdgeInsets.only(right: 38, left: 32, top: 30),
              child: GridView.count(
                crossAxisCount: 3,
                crossAxisSpacing: 7.0,
                mainAxisSpacing: 7.0,
                children: <Widget>[
                  Image.asset('assets/images/aboutus/about_us_1.png'),
                  Image.asset('assets/images/aboutus/about_us_2.png'),
                  Image.asset('assets/images/aboutus/about_us_3.png'),
                  Image.asset('assets/images/aboutus/about_us_4.png'),
                  Image.asset('assets/images/aboutus/about_us_5.png'),
                  Image.asset('assets/images/aboutus/about_us_6.png'),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
