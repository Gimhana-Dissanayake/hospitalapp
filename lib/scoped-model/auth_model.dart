import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:scoped_model/scoped_model.dart';

class AuthModel extends Model {
  String _verificationId;
  bool isSmsCodeSent;
  bool isAuthenticating = false;
  bool isVerifyingSmsCode = false;
  String phoneNumber;

  void signOut() {
    FirebaseAuth.instance.signOut();
    notifyListeners();
  }

  Future<void> authenticationWithPhoneNumber(String phoneNumber) async {
    this.isAuthenticating = true;
    this.phoneNumber = phoneNumber;
    final PhoneVerificationCompleted completed =
        (AuthCredential authCredential) async {
      final AuthResult authResult =
          await FirebaseAuth.instance.signInWithCredential(authCredential);
      saveUser(authResult);
      this.isAuthenticating = false;
      notifyListeners();
    };

    final PhoneCodeSent codeSent = (String verificationId, [int forceResend]) {
      this._verificationId = verificationId;
      this.isSmsCodeSent = true;
      this.isAuthenticating = false;
      notifyListeners();
    };

    final PhoneCodeAutoRetrievalTimeout retrivalTimeOut =
        (String verificationId) {
      this._verificationId = verificationId;
      this.isAuthenticating = false;
      notifyListeners();
    };

    final PhoneVerificationFailed verificationFailed =
        (AuthException authException) {
      print(authException.message);
      this.isAuthenticating = false;
      notifyListeners();
    };

    await FirebaseAuth.instance.verifyPhoneNumber(
        phoneNumber: phoneNumber,
        timeout: Duration(seconds: 10),
        verificationCompleted: completed,
        verificationFailed: verificationFailed,
        codeSent: codeSent,
        codeAutoRetrievalTimeout: retrivalTimeOut);
  }

  verifySmsCode(String code) async {
    this.isVerifyingSmsCode = true;
    notifyListeners();
    AuthCredential authCredential = PhoneAuthProvider.getCredential(
        verificationId: this._verificationId, smsCode: code);
    final AuthResult authResult =
        await FirebaseAuth.instance.signInWithCredential(authCredential);
    saveUser(authResult);
    this.isVerifyingSmsCode = false;
    notifyListeners();
  }

  saveUser(AuthResult authResult) async {
    final FirebaseUser firebaseUser = await FirebaseAuth.instance.currentUser();
    if (authResult.additionalUserInfo.isNewUser && firebaseUser != null) {
      Firestore.instance
          .collection('patients')
          .document(firebaseUser.uid)
          .setData({'mobile': this.phoneNumber});
    }
  }
}
