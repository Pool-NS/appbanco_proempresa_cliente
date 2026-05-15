import 'package:flutter/material.dart';
import '../../viewmodel/auth_viewmodel.dart';
import '../home/dashboard_screen.dart';

class LoginScreen extends StatelessWidget {
  // Al tener controladores, esta clase NO puede tener un constructor const
  final TextEditingController dniController = TextEditingController();
  final TextEditingController passController = TextEditingController();
  final AuthViewModel viewModel = AuthViewModel();

  LoginScreen({super.key}); 

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(30.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            // Branding ProEmpresa
            const Icon(Icons.account_balance, size: 80, color: Color(0xFF009640)),
            const Text("Financiera ProEmpresa", 
              style: TextStyle(color: Color(0xFF009640), fontSize: 20, fontWeight: FontWeight.bold)),
            const SizedBox(height: 40),
            TextField(
              controller: dniController,
              decoration: const InputDecoration(labelText: 'DNI / Usuario', border: OutlineInputBorder()),
            ),
            const SizedBox(height: 20),
            TextField(
              controller: passController,
              obscureText: true,
              decoration: const InputDecoration(labelText: 'Contraseña', border: OutlineInputBorder()),
            ),
            const SizedBox(height: 30),
            SizedBox(
              width: double.infinity,
              height: 50,
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(backgroundColor: const Color(0xFFFFD100)),
                onPressed: () {
                  if (viewModel.login(dniController.text, passController.text)) {
                    Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => const DashboardScreen()));
                  } else {
                    ScaffoldMessenger.of(context).showSnackBar(const SnackBar(content: Text("Datos incorrectos")));
                  }
                },
                child: const Text('INGRESAR', style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold)),
              ),
            ),
          ],
        ),
      ),
    );
  }
}