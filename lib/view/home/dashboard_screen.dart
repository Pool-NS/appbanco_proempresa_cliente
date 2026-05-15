import 'package:flutter/material.dart';

class DashboardScreen extends StatelessWidget {
  const DashboardScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Hola, Jose Anthony"),
        backgroundColor: const Color(0xFF009640),
        actions: [IconButton(icon: const Icon(Icons.logout), onPressed: () => Navigator.pop(context))],
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          children: [
            Card(
              color: const Color(0xFF009640),
              child: const ListTile(
                title: Text("Saldo de Ahorros", style: TextStyle(color: Colors.white)),
                subtitle: Text("S/ 1,500.00", style: TextStyle(color: Colors.white, fontSize: 24, fontWeight: FontWeight.bold)),
              ),
            ),
            const Card(
              child: ListTile(
                leading: Icon(Icons.credit_card, color: Colors.orange),
                title: Text("Crédito Activo"),
                subtitle: Text("Pendiente: S/ 4,200.00"),
              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        selectedItemColor: const Color(0xFF009640),
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Inicio'),
          BottomNavigationBarItem(icon: Icon(Icons.account_balance), label: 'Cuentas'),
          BottomNavigationBarItem(icon: Icon(Icons.person), label: 'Perfil'),
        ],
      ),
    );
  }
}