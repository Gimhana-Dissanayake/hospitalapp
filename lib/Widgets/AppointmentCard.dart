import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:intl/intl.dart';
import 'package:slh_channeling_app/Widgets/GeneralButton.dart';

import '../models/appointment.dart';


class AppointmentCard extends StatelessWidget {
  Appointment appointment;

  AppointmentCard(this.appointment);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.fromLTRB(0, 6.5, 0, 6.5),
      child: Card(
        elevation: 5,
        color: Hexcolor('#E4DCFF'),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(15.0),
        ),
        child: Container(
          width: 355,
          child: Column(
            children: <Widget>[
              Row(
                children: <Widget>[
                  Column(
                    children: <Widget>[
                      Container(
                        padding: EdgeInsets.only(left: 15, right: 10),
                        child: Column(
                          children: <Widget>[
                            Text(
                              DateFormat.MMMM().format(appointment.dateToday),
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                  color: Hexcolor('#1F3A6F'),
                                  fontWeight: FontWeight.w500,
                                  fontSize: 16,
                                  letterSpacing: 0.15),
                            ),
                            Text(DateFormat.d().format(appointment.dateToday),
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                    color: Hexcolor('#df292e'),
                                    fontWeight: FontWeight.w500,
                                    fontSize: 16,
                                    letterSpacing: 0.15)),
                            Text(
                              DateFormat.EEEE().format(appointment.dateToday),
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                  color: Hexcolor('#1F3A6F'),
                                  fontWeight: FontWeight.w500,
                                  fontSize: 16,
                                  letterSpacing: 0.15),
                            ),
                          ],
                        ),
                      )
                    ],
                  ),
                  Expanded(
                    child: Container(
                      margin: EdgeInsets.only(left: 10, top: 14),
                      decoration: BoxDecoration(
                        border: Border(
                          left: BorderSide(
                            color: Colors.white,
                            width: 0.5,
                          ),
                        ),
                      ),
                      child: Column(
                        children: <Widget>[
                          Container(
                            padding: EdgeInsets.only(bottom: 7),
                            margin: EdgeInsets.only(left: 10),
                            decoration: BoxDecoration(
                              border: Border(
                                bottom: BorderSide(
                                  color: Colors.white,
                                  width: 0.5,
                                ),
                              ),
                            ),
                            child: Row(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: <Widget>[
                                Expanded(
                                  flex: 6,
                                  child: Container(
                                    child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: <Widget>[
                                        Text(
                                          "Patient Name :",
                                          style: TextStyle(fontSize: 8),
                                        ),
                                        Text(
                                          "${appointment.patientName}",
                                          style: TextStyle(
                                              fontSize: 8,
                                              fontWeight: FontWeight.bold),
                                        )
                                      ],
                                    ),
                                  ),
                                ),
                                Expanded(
                                  flex: 5,
                                  child: Container(
                                    padding: EdgeInsets.only(left: 8),
                                    child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: <Widget>[
                                        Text(
                                          "Your Number :",
                                          style: TextStyle(fontSize: 8),
                                        ),
                                        Text(appointment.patientNumber < 10 ?'0${appointment.patientNumber}':appointment.patientNumber.toString(),
                                            style: TextStyle(
                                                fontSize: 8,
                                                fontWeight: FontWeight.bold))
                                      ],
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Container(
                            padding: EdgeInsets.only(top: 7, bottom: 7),
                            margin: EdgeInsets.only(left: 10),
                            decoration: BoxDecoration(
                              border: Border(
                                bottom: BorderSide(
                                  color: Colors.white,
                                  width: 0.5,
                                ),
                              ),
                            ),
                            child: Row(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: <Widget>[
                                Expanded(
                                  flex: 6,
                                  child: Container(
                                    child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: <Widget>[
                                        Text(
                                          "Your Time Slot :",
                                          style: TextStyle(fontSize: 8),
                                        ),
                                        Text(
                                          DateFormat.jm().format(appointment.timeSlot),
                                          style: TextStyle(
                                              fontSize: 8,
                                              fontWeight: FontWeight.bold),
                                        )
                                      ],
                                    ),
                                  ),
                                ),
                                Expanded(
                                  flex: 5,
                                  child: Container(
                                    padding: EdgeInsets.only(left: 8),
                                    child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: <Widget>[
                                        Text(
                                          "Room Number :",
                                          style: TextStyle(fontSize: 8),
                                        ),
                                        Text("Floor ${appointment.floorNo < 10 ?'0${appointment.floorNo}' :'${appointment.floorNo}'} / Room ${appointment.roomNo < 10 ?'0${appointment.roomNo}' :'${appointment.roomNo}'} ",
                                            style: TextStyle(
                                                fontSize: 8,
                                                fontWeight: FontWeight.bold))
                                      ],
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Container(
                            padding: EdgeInsets.only(top: 7, bottom: 7),
                            margin: EdgeInsets.only(left: 10),
                            decoration: BoxDecoration(
                              border: Border(
                                bottom: BorderSide(
                                  color: Colors.white,
                                  width: 0.5,
                                ),
                              ),
                            ),
                            child: Row(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: <Widget>[
                                Expanded(
                                  flex: 6,
                                  child: Container(
                                    child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: <Widget>[
                                        Text(
                                          "Consultant :",
                                          style: TextStyle(fontSize: 8),
                                        ),
                                        Text(
                                          "${appointment.doctor.doctorTitle}. ${appointment.doctor.namePrefix}. ${appointment.doctor.doctorName}\n${appointment.doctor.speciality}",
                                          style: TextStyle(
                                              fontSize: 8,
                                              fontWeight: FontWeight.bold),
                                        )
                                      ],
                                    ),
                                  ),
                                ),
                                Expanded(flex: 5, child: Container()),
                              ],
                            ),
                          ),
                          Container(
                            padding: EdgeInsets.only(top: 7, bottom: 7),
                            margin: EdgeInsets.only(left: 10),
                            decoration: BoxDecoration(
                              border: Border(
                                bottom: BorderSide(
                                  color: Colors.white,
                                  width: 0.5,
                                ),
                              ),
                            ),
                            child: Row(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: <Widget>[
                                Expanded(
                                  flex: 6,
                                  child: Container(
                                    child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: <Widget>[
                                        Text(
                                          "Session Status:",
                                          style: TextStyle(fontSize: 8),
                                        ),
                                        Text(
                                          "Doctor will attrive at ${DateFormat.jm().format(appointment.status)}",
                                          style: TextStyle(
                                              fontSize: 8,
                                              fontWeight: FontWeight.bold),
                                        )
                                      ],
                                    ),
                                  ),
                                ),
                                Expanded(
                                  flex: 5,
                                  child: Container(
                                    padding: EdgeInsets.only(left: 8),
                                    child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: <Widget>[
                                        Text(
                                          "Ongoing Number :",
                                          style: TextStyle(fontSize: 8),
                                        ),
                                        Text(appointment.onGoingNumber < 10 ?'0${appointment.onGoingNumber}': '${appointment.onGoingNumber}',
                                            style: TextStyle(
                                                fontSize: 8,
                                                fontWeight: FontWeight.bold))
                                      ],
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Container(width: 22),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Container(
                    margin: EdgeInsets.only(top: 8, bottom: 9),
                    child: GeneralButton(
                      type: ButtonSize.small,
                      buttonText: 'Inquiries',
                      boderRadius: 15.0,
                      callback: () {
                        print('Hello world!!');
                      },
                    ),
                  )
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
