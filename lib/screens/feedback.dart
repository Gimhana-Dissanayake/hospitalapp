import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:scoped_model/scoped_model.dart';
import 'package:slh_channeling_app/Widgets/GeneralButton.dart';
import 'package:slh_channeling_app/scoped-model/main.dart';

class FeedbackScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    var height = MediaQuery.of(context).size.height;

//    print(width);
//    print(height);

    var widthFactor;
    var heightFactor;
    if (MediaQuery.of(context).orientation == Orientation.portrait) {
      widthFactor = width / 414;
      heightFactor = height / 763;
    } else {
      widthFactor = height / 763;
      heightFactor = width / 414;
    }

    return Scaffold(
      resizeToAvoidBottomInset: false,
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
            'Feedbacks',
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
      body: Container(
        margin: EdgeInsets.fromLTRB(
            30 * widthFactor, 33 * heightFactor, 30 * widthFactor, 15),
        child: SingleChildScrollView(
          child: Column(
            children: <Widget>[
              Row(
                children: <Widget>[
                  Expanded(
                    child: TextFormField(
                        decoration: InputDecoration(
                          border: InputBorder.none,
                          fillColor: Hexcolor('#C4C4C4'),
                          filled: true,
                          hintText: 'Type your feedbacks here...',
                        ),
                        keyboardType: TextInputType.multiline,
                        maxLines: 10),
                  )
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Container(
                    margin:
                        EdgeInsets.only(top: 32.99 * heightFactor, bottom: 10),
                    child: GeneralButton(
                      type: ButtonSize.medium,
                      buttonText: 'Submit',
                      boderRadius: 20.0,
                      callback: () {
                        print('Hello');
                      },
                    ),
                  )
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
