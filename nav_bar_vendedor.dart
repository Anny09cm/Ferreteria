import 'package:flutter/material.dart';

import 'package:google_fonts/google_fonts.dart';

class NavBarVendedor extends StatelessWidget {
  const NavBarVendedor({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: [
        UserAccountsDrawerHeader(
          accountName:  Text('Usuario',
          style: GoogleFonts.orienta(
            textStyle: TextStyle(
              fontSize: 16,
            ),
          ),
          ),
          accountEmail: Text('usuario@example.com',
          style: GoogleFonts.orienta(
            textStyle: TextStyle(
              fontSize: 16,
              color: Colors.grey,
            ),
          ),
          ),
          
          currentAccountPicture: CircleAvatar(
            backgroundColor: Colors.white,
            child: Icon(Icons.person, size: 50, color: Color(0xFFF4B400)
            ),
          ),
          decoration: BoxDecoration(
            color: Color.fromARGB(199, 244, 179, 0),
          ),
        ),
        ListTile(
          leading: Icon(Icons.dashboard),
          title: const Text('Dashboard'),
          onTap: () {
            Navigator.pop(context);
          },
        ),
        ListTile(
          leading: Icon(Icons.inventory_2),
          title: const Text('Pedidos'),
          onTap: () {
            Navigator.pop(context);
          },
        ),
        ListTile(
          leading: Icon(Icons.store),
          title: const Text('Productos'),
          onTap: () {
            Navigator.pop(context);
          },
        ),
        ListTile(
          leading: Icon(Icons.group),
          title: const Text('Clientes'),
          onTap: () {
            Navigator.pop(context);
          },
        ),
        ListTile(
          leading: Icon(Icons.receipt_long),
          title: const Text('Inventario'),
          onTap: () {
            Navigator.pop(context);
          },
        ),
        ListTile(
          leading: Icon(Icons.message),
          title: const Text('Mensajes'),
          onTap: () {
            Navigator.pop(context);
          },
        ),
        ListTile(
          leading: Icon(Icons.settings),
          title: const Text('Configuración'),
          onTap: () {
            Navigator.pop(context);
          },
        ),
        ListTile(
          leading: Icon(Icons.help),
          title: const Text('Ayuda y soporte'),
          onTap: () {
            Navigator.pop(context);
          },
        ),
        ListTile(
          leading: Icon(Icons.logout),
          title: const Text('Cerrar sesión'),
          onTap: () {
            Navigator.pop(context);
          },
        ),
        ],
      ),
    );
  }
}