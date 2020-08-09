import 'package:slh_channeling_app/models/doctor_sessions.dart';
import 'package:slh_channeling_app/models/doctor_sessions.dart';

class DoctorAndSessions {
  final String doctorTitle;
  final String namePrefix;
  final String doctorName;
  final String speciality;
  final List doctorSessions;

  DoctorAndSessions(
      {this.doctorTitle,
      this.namePrefix,
      this.doctorName,
      this.speciality,
      this.doctorSessions});
}
