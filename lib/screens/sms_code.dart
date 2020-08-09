import 'package:flutter/material.dart';
import 'package:scoped_model/scoped_model.dart';
import 'package:slh_channeling_app/Widgets/ButtonFill.dart';
import 'package:slh_channeling_app/Widgets/TextInputField.dart';
import 'package:slh_channeling_app/Widgets/TitlePrimary.dart';
import 'package:slh_channeling_app/scoped-model/main.dart';

class SmsCode extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _SmsCodeState();
  }
}

class _SmsCodeState extends State<SmsCode> {
  String smsCode;
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  void _submitForm(Function verifySmsCode) {
    verifySmsCode(smsCode);
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
                TitlePrimary(text: 'Verify Code'),
                SizedBox(
                  height: 24.0,
                ),
                TextInputField(
                  onChanged: (String value) {
                    setState(() {
                      smsCode = value;
                    });
                  },
                  hintText: "SMS Code",
                  prefixIcon: Icon(Icons.phone_iphone),
                ),
                SizedBox(
                  height: 16.0,
                ),
                ScopedModelDescendant<MainModel>(
                  builder: (_, __, MainModel model) {
                    return ButtonFill(
                      title: "Verify",
                      pressed: () {
                        _submitForm(model.verifySmsCode);
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
