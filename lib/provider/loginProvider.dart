import 'package:flutter/material.dart';

class LoginTFProvider extends ChangeNotifier {
  TextEditingController _email = TextEditingController();
  TextEditingController get email => _email;
  set setEmail(val) {
    _email = val;
    notifyListeners();
  }

  TextEditingController _password = TextEditingController();
  TextEditingController get password => _password;
  set setPassword(val) {
    _password= val;
    notifyListeners();
  }
}
