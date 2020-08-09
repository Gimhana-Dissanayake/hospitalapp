import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:slh_channeling_app/Widgets/AppointmentCard.dart';
import 'package:slh_channeling_app/Widgets/SearchField.dart';
import 'package:slh_channeling_app/Widgets/SessionCard.dart';
import 'package:slh_channeling_app/Widgets/Tile.dart';
import 'package:slh_channeling_app/models/doctor.dart';
import 'package:slh_channeling_app/shared/constants.dart';
import 'package:slh_channeling_app/shared/speciality.dart';

import '../Widgets/AppointmentCard.dart';
import '../Widgets/AppointmentCard.dart';
import '../models/appointment.dart';
import '../models/doctor_and_sessions.dart';
import '../models/doctor_sessions.dart';

class AppointmentScreen extends StatefulWidget {
  @override
  _AppointmentScreenState createState() => _AppointmentScreenState();
}

class _AppointmentScreenState extends State<AppointmentScreen> {
  DoctorAndSessions doctorAndSessions = DoctorAndSessions(
      speciality: 'Clinical oncology',
      doctorName: 'Mala Gunarathne',
      namePrefix: 'Miss',
      doctorTitle: 'Dr',
      doctorSessions: [
        new DoctorSessions(
            availability: 10,
            startingTime: DateTime.now(),
            endingTime: DateTime.now(),
            sessionDate: DateTime.now()),
        new DoctorSessions(
          availability: 12,
          startingTime: DateTime.now(),
          endingTime: DateTime.now(),
          sessionDate: DateTime.now(),
        ),
        new DoctorSessions(
            availability: 10,
            startingTime: DateTime.now(),
            endingTime: DateTime.now(),
            sessionDate: DateTime.now()),
        new DoctorSessions(
          availability: 0,
          startingTime: DateTime.now(),
          endingTime: DateTime.now(),
          sessionDate: DateTime.now(),
        )
      ]);

  Appointment appointment = Appointment(patientName: 'Ms. Shakya Weerasureeya',patientNumber: 04, timeSlot: DateTime.now(),doctor: Doctor(namePrefix: 'Mrs', doctorTitle: 'Prof', doctorName: 'Mala Pathirana',speciality: 'General practice'),floorNo: 2,roomNo: 4,onGoingNumber: 8, status: DateTime.now(),dateToday: DateTime.now());

  @override
  Widget build(BuildContext context) {
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
              'My Appointments',
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
          child: Column(
            children: <Widget>[
              Row(
                children: <Widget>[
                  Tile(
                    type: TileSize.small,
                    imageTopMargin: 10,
                    callBack: () {
                      print('Hello');
                    },
                    imagePath: 'assets/images/categories/virology.svg',
                    text: 'Virology',
                  ),
                  Tile(
                    type: TileSize.small,
                    imageTopMargin: 15,
                    callBack: () {
                      print('Hello');
                    },
                    imagePath: 'assets/images/categories/neurology.svg',
                    text: 'Neurology',
                  ),
                  Tile(
                    type: TileSize.small,
                    imageTopMargin: 15,
                    callBack: () {
                      print('Hello');
                    },
                    imagePath:
                        'assets/images/categories/diagnostic_radiology.svg',
                    text: 'Diagnostic Radiology',
                  ),
                ],
              ),
             AppointmentCard(appointment),
              SearchField(),
              Row(
                children: <Widget>[
                  Tile(
                    type: TileSize.medium,
                    imageTopMargin: 10,
                    callBack: () {
                      print('Hello');
                    },
                    imagePath: 'assets/images/dashboard/view_consultants.svg',
                    text: 'View Consultants',
                  ),
                  Tile(
                    type: TileSize.medium,
                    imageTopMargin: 15,
                    callBack: () {
                      print('Hello');
                    },
                    imagePath: 'assets/images/dashboard/get_directions.svg',
                    text: 'Get Directions',
                  ),
                ],
              ),
            ],
          ),
        ));
  }
}
