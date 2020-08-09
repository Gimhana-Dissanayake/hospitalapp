import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:scoped_model/scoped_model.dart';
import 'package:slh_channeling_app/scoped-model/main.dart';

class ContactUsScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: true,
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
            'Contact us',
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
      body: SingleChildScrollView(
        child: Container(
          margin: EdgeInsets.fromLTRB(17, 49, 16, 60),
          child: Card(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(16.0),
            ),
            color: Hexcolor('#E4DCFF'),
            elevation: 2.5,
            child: Column(
              children: <Widget>[
                Row(
                  children: <Widget>[
                    Expanded(
                      child: Container(
                        width: double.infinity,
                        child: ClipRRect(
                          borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(16.0),
                              topRight: Radius.circular(16.0)),
                          child: Image.asset(
                            'assets/images/slhMap.png',
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                Row(
                  children: <Widget>[
                    Container(
                      padding: EdgeInsets.only(bottom: 35),
                      margin: EdgeInsets.only(left: 20, right: 20),
                      child: Column(
                        children: <Widget>[
                          Column(
                            children: <Widget>[
                              Container(
                                child: Icon(
                                  Icons.location_on,
                                  color: Hexcolor('#6C63FF'),
                                  size: 20,
                                ),
                                padding: EdgeInsets.only(bottom: 20),
                              ),
                              Container(
                                child: Icon(
                                  Icons.call,
                                  color: Hexcolor('#6C63FF'),
                                  size: 20,
                                ),
                                padding: EdgeInsets.only(bottom: 15),
                              ),
                              Container(
                                child: Icon(
                                  Icons.language,
                                  color: Hexcolor('#6C63FF'),
                                  size: 20,
                                ),
                                padding: EdgeInsets.only(bottom: 15, top: 10),
                              ),
                              Icon(
                                Icons.access_time,
                                color: Hexcolor('#6C63FF'),
                                size: 20,
                              )
                            ],
                          ),
                        ],
                      ),
                    ),
                    Expanded(
                      child: Container(
                        margin: EdgeInsets.only(top: 10, bottom: 35),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            Container(
                              width: double.infinity,
                              padding: EdgeInsets.only(bottom: 10),
                              decoration: BoxDecoration(
                                border: Border(
                                  bottom: BorderSide(
                                    color: Colors.white,
                                    width: 0.5,
                                  ),
                                ),
                              ),
                              child: Text('144, Beliatta Road, Tangalla',
                                  style: TextStyle(color: Hexcolor('#1F3A6F'))),
                            ),
                            Container(
                              width: double.infinity,
                              margin: EdgeInsets.only(top: 10),
                              padding: EdgeInsets.only(bottom: 10),
                              decoration: BoxDecoration(
                                border: Border(
                                  bottom: BorderSide(
                                    color: Colors.white,
                                    width: 0.5,
                                  ),
                                ),
                              ),
                              child: Text('+94 477 700 800\n+94 762 700 800',
                                  style: TextStyle(color: Hexcolor('#1F3A6F'))),
                            ),
                            Container(
                              width: double.infinity,
                              margin: EdgeInsets.only(top: 10),
                              padding: EdgeInsets.only(bottom: 10),
                              decoration: BoxDecoration(
                                border: Border(
                                  bottom: BorderSide(
                                    color: Colors.white,
                                    width: 0.5,
                                  ),
                                ),
                              ),
                              child: Text('http://slh.lk/',
                                  style: TextStyle(color: Hexcolor('#1F3A6F'))),
                            ),
                            Container(
                              width: double.infinity,
                              margin: EdgeInsets.only(top: 10),
                              padding: EdgeInsets.only(bottom: 10),
                              decoration: BoxDecoration(
                                border: Border(
                                  bottom: BorderSide(
                                    color: Colors.white,
                                    width: 0.5,
                                  ),
                                ),
                              ),
                              child: Text('Open 24 hours',
                                  style: TextStyle(color: Hexcolor('#1F3A6F'))),
                            ),
                          ],
                        ),
                      ),
                    ),
                    Container(
                      child: Column(),
                      width: 25,
                    ),
                  ],
                ),
                Container(
                  margin: EdgeInsets.only(bottom: 35),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Container(
                        margin: EdgeInsets.only(right: 46),
                        child: Column(
                          children: <Widget>[
                            SvgPicture.asset(
                                'assets/images/contactus/facebook.svg')
                          ],
                        ),
                      ),
                      Column(
                        children: <Widget>[
                          SvgPicture.asset(
                              'assets/images/contactus/messenger.svg')
                        ],
                      ),
                      Container(
                        margin: EdgeInsets.only(left: 46),
                        child: Column(
                          children: <Widget>[
                            SvgPicture.asset(
                                'assets/images/contactus/instagram.svg')
                          ],
                        ),
                      )
                    ],
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

//Card(
//elevation: 2.5,
//child: Container(),
//),
