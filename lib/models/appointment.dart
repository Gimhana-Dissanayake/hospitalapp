import 'doctor.dart';

class Appointment {
  final String patientName;
  final int patientNumber;
  final DateTime timeSlot;
  final int floorNo;
  final int roomNo;
  final Doctor doctor;
  final DateTime status;
  final int onGoingNumber;
  final DateTime dateToday;

  Appointment({this.patientName,this.patientNumber, this.timeSlot,this.floorNo, this.roomNo, this.doctor, this.status, this.onGoingNumber, this.dateToday});

}
