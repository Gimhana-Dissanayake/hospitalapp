import 'package:scoped_model/scoped_model.dart';
import 'package:slh_channeling_app/scoped-model/auth_model.dart';
import 'package:slh_channeling_app/scoped-model/notification_model.dart';

class MainModel extends Model with AuthModel, NotificationModel {}
