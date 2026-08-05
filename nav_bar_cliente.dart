import 'package:flutter/material.dart';

class NavBarCliente extends StatelessWidget {
  const NavBarCliente({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      backgroundColor: Colors.white,
      child: ListView(
        padding: EdgeInsets.zero,
        children: [
        UserAccountsDrawerHeader(
          accountName: const Text('Usuario'),
          accountEmail: const Text('usuario@example.com'),
          
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
          title: const Text('Mis pedidos'),
          onTap: () {
            Navigator.pop(context);
          },
        ),
        ListTile(
          leading: Icon(Icons.favorite_border),
          title: const Text('Favoritos'),
          onTap: () {
            Navigator.pop(context);
          },
        ),
        ListTile(
          leading: Icon(Icons.history),
          title: const Text('Comprar de nuevo'),
          onTap: () {
            Navigator.pop(context);
          },
        ),
        ListTile(
          leading: Icon(Icons.location_on),
          title: const Text('Direcciones'),
          onTap: () {
            Navigator.pop(context);
          },
        ),
        ListTile(
          leading: Icon(Icons.payment),
          title: const Text('Metodos de pago'),
          onTap: () {
            Navigator.pop(context);
          },
        ),
        ListTile(
          leading: Icon(Icons.message),
          title: const Text('Cupones y promociones'),
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