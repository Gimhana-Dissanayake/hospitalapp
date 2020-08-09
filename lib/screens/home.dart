import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:slh_channeling_app/screens/appointment.dart';
import 'package:slh_channeling_app/screens/contact_us.dart';
import 'package:slh_channeling_app/screens/dashboard.dart';
import 'package:slh_channeling_app/screens/feedback.dart';
import 'package:slh_channeling_app/screens/splash.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  PageController pageController;
  int pageIndex = 0;

  @override
  void initState() {
    super.initState();
    pageController = PageController();
  }

  @override
  void dispose() {
    pageController.dispose();
    super.dispose();
  }

  onPageChanged(int pageIndex) {
    setState(() {
      this.pageIndex = pageIndex;
    });
  }

  onTap(int pageIndex) {
    pageController.jumpToPage(
      pageIndex,
    );
  }

  @override
  Widget build(BuildContext context) {
    var isPortrait = MediaQuery.of(context).orientation == Orientation.portrait;

    return Scaffold(
      body: Container(
        width: double.infinity,
        height: double.infinity,
        child: Stack(
          overflow: Overflow.visible,
          children: <Widget>[
            PageView(
                children: <Widget>[
                  SplashScreen(),
                  DarshBoardScreen(),
                  AppointmentScreen(),
                  FeedbackScreen(),
                  ContactUsScreen()
                ],
                controller: pageController,
                onPageChanged: onPageChanged,
                physics: NeverScrollableScrollPhysics()),
            Positioned(
//              bottom: -175,
//              right: -120,
              bottom: isPortrait ? -175 : -170,
              right: isPortrait ? -120 : -150,
              child: ClipOval(
                child: Container(
//                  height: 200,
//                  width: 600,
                  height: 200,
                  width: isPortrait ? 600 : 940,
                  color: Hexcolor('#E4DCFF'),
                ),
              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        elevation: 0.0,
        backgroundColor: Hexcolor('#E4DCFF'),
        unselectedIconTheme: IconThemeData(color: Colors.white),
        selectedIconTheme: IconThemeData(color: Hexcolor('#413E98')),
        currentIndex: pageIndex,
        onTap: onTap,
        items: [
          BottomNavigationBarItem(
//              activeIcon: ,
            icon: Icon(
              Icons.home,
            ),
            title: Text(
              "",
              style: TextStyle(color: Colors.black),
            ),
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.feedback,
            ),
            title: Text(
              "",
              style: TextStyle(color: Colors.black),
            ),
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.call,
              size: 35,
            ),
            title: Text(
              "",
              style: TextStyle(color: Colors.black),
            ),
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.local_offer,
            ),
            title: Text(
              "",
              style: TextStyle(color: Colors.black),
            ),
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.person,
            ),
            title: Text(
              "",
              style: TextStyle(color: Colors.black),
            ),
          ),
        ],
      ),
    );
  }
}
