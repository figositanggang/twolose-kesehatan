import 'package:flutter/material.dart';

class SUTFProvider extends ChangeNotifier {
  TextEditingController _number = TextEditingController();
  TextEditingController get number => _number;
  set setNumber(val) {
    _number = val;
    notifyListeners();
  }

  TextEditingController _email = TextEditingController();
  TextEditingController get email => _email;
  set setEmail(val) {
    _email = val;
    notifyListeners();
  }
  
  TextEditingController _password = TextEditingController();
  TextEditingController get password => _password;
  set setPassword(val) {
    _password = val;
    notifyListeners();
  }

  TextEditingController _rePassword = TextEditingController();
  TextEditingController get rePassword => _rePassword;
  set setRePassword(val) {
    _rePassword = val;
    notifyListeners();
  }
}