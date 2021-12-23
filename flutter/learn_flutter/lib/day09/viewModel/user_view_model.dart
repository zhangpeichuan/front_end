import 'package:flutter/material.dart';
import 'package:learn_flutter/day09/model/user_info.dart';

class HYUserViewModel extends ChangeNotifier{
  late UserInfo _user;

  HYUserViewModel(this._user);

  UserInfo get user => _user;

  set user(UserInfo value) {
    _user = value;
    notifyListeners();
  }
}