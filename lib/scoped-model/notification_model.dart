import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:scoped_model/scoped_model.dart';

class NotificationModel extends Model {
  void configureMessaging() {
    FirebaseMessaging().configure(
      onMessage: (Map<String, dynamic> message) async {},
      onBackgroundMessage: _backgroundMessageHandler,
      onLaunch: (Map<String, dynamic> message) async {},
      onResume: (Map<String, dynamic> message) async {},
    );
  }

  _backgroundMessageHandler(Map<String, dynamic> message) {
    if (message.containsKey('data')) {
      final dynamic data = message['data'];
    }

    if (message.containsKey('notification')) {
      final dynamic notification = message['notification'];
    }
  }

  void storeAuthToken() async {
    String token = await FirebaseMessaging().getToken();
    final FirebaseUser currentUser = await FirebaseAuth.instance.currentUser();
    if (currentUser != null) {
      Firestore.instance
          .collection('patients')
          .document(currentUser.uid)
          .updateData({"deviceToken": token});
    }
  }
}
