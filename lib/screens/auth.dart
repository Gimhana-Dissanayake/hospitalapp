import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:scoped_model/scoped_model.dart';
import 'package:slh_channeling_app/Widgets/ButtonFill.dart';
import 'package:slh_channeling_app/Widgets/TextInputField.dart';
import 'package:slh_channeling_app/Widgets/TitlePrimary.dart';
import 'package:slh_channeling_app/scoped-model/main.dart';

class AuthPage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _AuthPage();
  }
}

class _AuthPage extends State<AuthPage> {
  String mobileNumber;
  String smsCode;
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  void _submitForm(Function authenticationWithPhoneNumber) {
    authenticationWithPhoneNumber(mobileNumber);
    Navigator.pushNamed(context, 'verify-code');
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: EdgeInsets.all(24.0),
        child: Center(
          child: Form(
            key: _formKey,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                TitlePrimary(text: 'Sign In'),
                SizedBox(
                  height: 24.0,
                ),
                TextInputField(
                  onChanged: (String value) {
                    setState(() {
                      mobileNumber = value;
                    });
                  },
                  hintText: "Mobile Number",
                  prefixIcon: Icon(Icons.phone_iphone),
                ),
                SizedBox(
                  height: 16.0,
                ),
                ScopedModelDescendant<MainModel>(
                  builder: (_, __, MainModel model) {
                    return model.isAuthenticating
                        ? SpinKitCircle(
                            itemBuilder: (BuildContext context, int index) {
                              return DecoratedBox(
                                decoration: BoxDecoration(
                                  color: Theme.of(context).primaryColor,
                                ),
                              );
                            },
                          )
                        : ButtonFill(
                            title: "Sign In",
                            pressed: () {
                              _submitForm(model.authenticationWithPhoneNumber);
                            },
                          );
                  },
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
