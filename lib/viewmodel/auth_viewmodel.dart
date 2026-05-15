import 'package:flutter/material.dart';

class AuthViewModel extends ChangeNotifier {
  // Datos exigidos por la rúbrica S9
  final String _dniCorrecto = "71234567";
  final String _passCorrecta = "123456";

  bool login(String dni, String password) {
    // Validación simple hardcodeada
    return dni == _dniCorrecto && password == _passCorrecta;
  }
}