import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'package:ferraria/screens/nav_bar_vendedor.dart';
import 'package:ferraria/screens/nav_bar_cliente.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      drawer: NavBarVendedor(),
      appBar: AppBar(
        backgroundColor: Color(0xFFF4B400)
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [

              const SizedBox(height: 15),

              Text(
                'Ofertas del dia',
                style: GoogleFonts.orienta(
                  textStyle: TextStyle(
                  fontSize: 16,
                ),
                ),
              ),

              const SizedBox(height: 15),

              Text(
                'Volver a comprar',
                style: GoogleFonts.orienta(
                  textStyle: TextStyle(
                  fontSize: 16,
                ),
                ),
              ),

              const SizedBox(height: 15),

              Text(
                'Marcas populares',
                style: GoogleFonts.orienta(
                  textStyle: TextStyle(
                  fontSize: 16,
                ),
                ),
              ),
            ],
      ),
      ),
    );
  }
}