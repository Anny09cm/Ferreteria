
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'package:ferraria/screens/catalogo_screen.dart';
import 'package:ferraria/widgets/producto_categoria_card.dart';

class ProductosScreen extends StatelessWidget {
  final String categoria;
  final List<Map<String, String>> productos;

  const ProductosScreen({
    super.key,
    required this.categoria,
    required this.productos,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: const Color(0xFFF4B400),
        elevation: 4,
        automaticallyImplyLeading: false, 
        shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.vertical(
            bottom: Radius.circular(20), 
          ),
        ),
        title: Row(
          children: [      
            IconButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const CatalogoScreen(),
                  ),
                );
              }, 
              icon: const Icon(
                Icons.chevron_left,
                color: Colors.white,
              ),
            ),

            const SizedBox(width: 10),

            Text(
              categoria,
              style: GoogleFonts.poppins(color: Colors.white),
            ),
          ],
        ),
      ),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(
            horizontal: 20,
            vertical: 20,
          ),
          child: Column(
            children: [
              const SizedBox(height: 10),
              Expanded(
                child: GridView.builder(
                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                    crossAxisSpacing: 15,
                    mainAxisSpacing: 15,
                    mainAxisExtent: 240,
                  ),
                  itemCount: productos.length,
                  itemBuilder: (context, index) { 
                    return ProductoCard(
                      nombre: productos[index]["nombre"] ?? '',
                      imagen: productos[index]["imagen"] ?? '',
                    );
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}