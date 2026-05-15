import 'package:flutter/material.dart';
import 'view/auth/login_screen.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primaryColor: const Color(0xFF009640),
        colorScheme: ColorScheme.fromSeed(seedColor: const Color(0xFF009640)),
      ),
      // SOLUCIÓN AL ERROR DE TU IMAGEN: Quitar el 'const' aquí
      home: LoginScreen(), 
    );
  }
}