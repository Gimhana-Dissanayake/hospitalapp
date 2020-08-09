import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:scoped_model/scoped_model.dart';
import 'package:slh_channeling_app/scoped-model/main.dart';
import 'package:slh_channeling_app/screens/about_us.dart';
import 'package:slh_channeling_app/screens/appointment.dart';
import 'package:slh_channeling_app/screens/auth.dart';
import 'package:slh_channeling_app/screens/contact_us.dart';
import 'package:slh_channeling_app/screens/feedback.dart';
import 'package:slh_channeling_app/screens/home.dart';
import 'package:slh_channeling_app/screens/sms_code.dart';
import 'package:slh_channeling_app/screens/splash.dart';

import 'screens/appointment.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  final MainModel _model = MainModel();

  @override
  State<StatefulWidget> createState() {
    return _MyAppState();
  }
}

class _MyAppState extends State<MyApp> {
  bool _isAuthenticated = true;
  final MaterialColor primaryColor = const MaterialColor(
    0xff82b1ff,
    const <int, Color>{
      50: const Color(0xFFFFFFFF),
      100: const Color(0xFFFFFFFF),
      200: const Color(0xFFFFFFFF),
      300: const Color(0xFFFFFFFF),
      400: const Color(0xFFFFFFFF),
      500: const Color(0xFFFFFFFF),
      600: const Color(0xFFFFFFFF),
      700: const Color(0xFFFFFFFF),
      800: const Color(0xFFFFFFFF),
      900: const Color(0xFFFFFFFF),
    },
  );

  @override
  void initState() {
    super.initState();
    widget._model.storeAuthToken();
    FirebaseAuth.instance.onAuthStateChanged.listen((event) {
      if (event != null) {
        setState(() {
          _isAuthenticated = true;
        });
      } else {
        setState(() {
          _isAuthenticated = false;
        });
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return ScopedModel<MainModel>(
      model: widget._model,
      child: MaterialApp(
        theme: ThemeData(
          primarySwatch: Colors.indigoAccent[300],
          primaryColorDark: Color(0xff3871FC),
          primaryColor: Colors.indigoAccent[300],
        ),
        routes: {
          '/': (BuildContext context) =>
              _isAuthenticated ? HomePage() : AppointmentScreen(),
          'verify-code': (BuildContext context) =>
              _isAuthenticated ? HomePage() : SmsCode(),
          'home': (BuildContext context) =>
              _isAuthenticated ? HomePage() : AuthPage(),
          'appointment': (BuildContext context) =>
              _isAuthenticated ? AppointmentScreen() : AuthPage(),
          'contact_us': (BuildContext context) => ContactUsScreen(),
          'about_us': (BuildContext context) => AboutUsScreen(),
          'feedback': (BuildContext context) => FeedbackScreen(),
          'splash': (BuildContext context) => SplashScreen()
        },
      ),
    );
  }
}

//routes: {
//'/': (BuildContext context) =>
//_isAuthenticated ? HomePage() : AuthPage(),
//'verify-code': (BuildContext context) =>
//_isAuthenticated ? HomePage() : SmsCode(),
//'home': (BuildContext context) =>
//_isAuthenticated ? HomePage() : AuthPage(),
//'appointment': (BuildContext context) =>
//_isAuthenticated ? AppointmentScreen() : AuthPage(),
//'channel': (BuildContext context) => ChannelScreen(),
//'session_list': (BuildContext context) => SessionListScreen(),
//'contact_us':(BuildContext context) => ContactUsScreen()
//},
