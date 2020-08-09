import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:intl/intl.dart';
import 'package:slh_channeling_app/models/doctor_and_sessions.dart';
import 'GeneralButton.dart';
import 'package:intl/date_symbol_data_local.dart';

class SessionCard extends StatelessWidget {
  DoctorAndSessions doctorAndSessions;

  SessionCard({@required this.doctorAndSessions});

  List<Container> displaySessions(List doctorSessionList) {
    List<Container> ls = [];
    doctorSessionList.forEach((doctorSession) => ls.add(Container(
          margin: EdgeInsets.only(bottom: 0.0),
          decoration: BoxDecoration(
            border: Border(
              bottom: BorderSide(
                color: Color.fromARGB(25, 196, 196, 196),
                width: 1,
              ),
            ),
          ),
          child: Row(
            children: <Widget>[
              Expanded(
                flex: 3,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Container(
                      child: Text(
                        DateFormat.yMd().format(doctorSession.sessionDate),
                        style: TextStyle(
                          color: Hexcolor('#1F3A6F'),
                          fontSize: 9,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    )
                  ],
                ),
              ),
              Expanded(
                flex: 4,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Container(
                      child: Text(
                        '${DateFormat.jm().format(doctorSession.sessionDate).substring(0, 4)}pm - ${DateFormat.jm().format(doctorSession.endingTime).substring(0, 4)}pm',
                        style: TextStyle(
                          color: Hexcolor('#1F3A6F'),
                          fontSize: 9,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                      margin: EdgeInsets.only(left: 5),
                    )
                  ],
                ),
              ),
              Expanded(
                flex: 3,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: <Widget>[
                    Container(
                      child: Text(
                        doctorSession.availability < 1
                            ? 'No slots left'
                            : doctorSession.availability == 1
                                ? '${doctorSession.availability} more slot'
                                : '${doctorSession.availability} more slots',
                        style: TextStyle(
                          color: doctorSession.availability < 1
                              ? Hexcolor('#df292e')
                              : Hexcolor('#1F3A6F'),
                          fontSize: 9,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    )
                  ],
                ),
              ),
            ],
          ),
        )));
    return ls;
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.transparent,
      margin: EdgeInsets.fromLTRB(0, 6.5, 0, 6.5),
      child: Card(
          elevation: 5,
          color: Hexcolor('#E4DCFF'),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(15.0),
          ),
          child: Container(
            margin: EdgeInsets.only(top: 15, bottom: 15),
            width: 355,
            child: Row(
              children: <Widget>[
                Expanded(
                  flex: 285,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: <Widget>[
                      Container(
                        margin: EdgeInsets.only(left: 17, bottom: 0.0),
                        child: Row(
                          children: <Widget>[
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: <Widget>[
                                Text(
                                    '${doctorAndSessions.doctorTitle}. ${doctorAndSessions.namePrefix}. ${doctorAndSessions.doctorName}',
                                    style: TextStyle(
                                        fontWeight: FontWeight.w500,
                                        fontSize: 16)),
                                Text('${doctorAndSessions.speciality}',
                                    style: TextStyle(
                                        fontWeight: FontWeight.w500,
                                        fontSize: 10))
                              ],
                            ),
                          ],
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.only(top: 9, left: 17),
                        padding: EdgeInsets.only(right: 9),
                        decoration: BoxDecoration(
                          border: Border(
                            right: BorderSide(
                              color: Color.fromARGB(25, 196, 196, 196),
//                                color: Colors.white,
                              width: 1,
                            ),
                          ),
                        ),
                        child: Column(
                          children: <Widget>[
                            Container(
                              margin: EdgeInsets.only(bottom: 9),
                              decoration: BoxDecoration(
                                border: Border(
                                  bottom: BorderSide(
                                    color: Color.fromARGB(25, 196, 196, 196),
                                    width: 1,
                                  ),
                                ),
                              ),
                              child: Row(
                                children: <Widget>[
                                  Expanded(
                                    flex: 1,
                                    child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: <Widget>[
                                        Container(
                                          child: Text(
                                            'Date',
                                            style: TextStyle(
                                              color: Hexcolor('#9C9B9D'),
                                              fontSize: 8,
                                            ),
                                          ),
                                        )
                                      ],
                                    ),
                                  ),
                                  Expanded(
                                    flex: 2,
                                    child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: <Widget>[
                                        Container(
                                          child: Text(
                                            'Session Time',
                                            style: TextStyle(
                                              color: Hexcolor('#9C9B9D'),
                                              fontSize: 8,
                                            ),
                                          ),
                                          margin: EdgeInsets.only(left: 16),
                                        )
                                      ],
                                    ),
                                  ),
                                  Expanded(
                                    flex: 1,
                                    child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.end,
                                      children: <Widget>[
                                        Container(
                                          child: Text(
                                            'Availability',
                                            style: TextStyle(
                                              color: Hexcolor('#9C9B9D'),
                                              fontSize: 8,
                                            ),
                                          ),
                                        )
                                      ],
                                    ),
                                  )
                                ],
                              ),
                            ),
                            Column(
                              children: displaySessions(
                                  doctorAndSessions.doctorSessions),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                Expanded(
                  flex: 100,
                  child: Column(
                    children: <Widget>[
                      Container(
                        margin: EdgeInsets.only(top: 35, left: 4, right: 4),
                        child: GeneralButton(
                          buttonText: 'Channel now',
                          boderRadius: 40,
                          callback: () => {},
                          type: ButtonSize.small,
                        ),
                      ),
                    ],
                  ),
                )
              ],
            ),
          )),
    );
  }
}
//return ListView.builder(
//itemCount: 2,
//itemBuilder: (BuildContext context, int index) {
//},
//);
