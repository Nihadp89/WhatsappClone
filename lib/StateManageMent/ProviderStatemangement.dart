// ignore: file_names
import 'package:flutter/material.dart';

// ignore: camel_case_types
class stateProvider with ChangeNotifier {

  // ignore: non_constant_identifier_names
  bool Truefalse = true;
  // ignore: non_constant_identifier_names
  void Truecal() {
    Truefalse = true;
    notifyListeners();
  }

  // ignore: non_constant_identifier_names
  void Falsecall() {
    Truefalse= false;
    notifyListeners();
  }
}
