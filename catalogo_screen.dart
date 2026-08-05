
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'package:ferraria/screens/main_screen.dart';
import 'package:ferraria/screens/productos_screen.dart'; 
import 'package:ferraria/widgets/categoria_card.dart';

class CatalogoScreen extends StatefulWidget {
  const CatalogoScreen({super.key});

  @override
  State<CatalogoScreen> createState() => _CatalogoScreenState();
}

class _CatalogoScreenState extends State<CatalogoScreen> {
  final List<Map<String, String>> categorias = [
    {"categoria": "Herramientas", "imagen": "assets/images/herramientas.png"},
    {"categoria": "Materiales", "imagen": "assets/images/materiales.jpg"},
    {"categoria": "Electricidad", "imagen": "assets/images/electricidad.png"},
    {"categoria": "Plomeria", "imagen": "assets/images/plomeria.png"},
    {"categoria": "Pinturas", "imagen": "assets/images/pintura.png"},
    {"categoria": "Tornilleria", "imagen": "assets/images/tornilleria.png"},
    {"categoria": "Seguridad", "imagen": "assets/images/seguridad.jpg"},
    {"categoria": "Jardineria", "imagen": "assets/images/jardineria.png"},
  ];

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
                    builder: (context) => const MainScreen(),
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
              'Catálogo',
              style: GoogleFonts.poppins(color: Colors.white),
            ),
          ],
        ),
      ),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(
            horizontal: 20,
            vertical: 40,
          ),
          child: Column(
            children: [
              const SizedBox(height: 20),
              Expanded(
                child: GridView.builder(
                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                    crossAxisSpacing: 15,
                    mainAxisSpacing: 15,
                    mainAxisExtent: 240,
                  ),
                  itemCount: categorias.length,
                  itemBuilder: (context, index) {
                    final categoriaNombre = categorias[index]["categoria"] ?? '';
                    final categoriaImagen = categorias[index]["imagen"] ?? '';
                    return GestureDetector(
                      onTap: () {
                        List<Map<String, String>> listaDeProductos = [];

                        if (categoriaNombre == "Herramientas") {
                          listaDeProductos = [
                            {"nombre": "Martillos", "imagen": "assets/images/maritillo.jpg"},
                            {"nombre": "Destornilladores", "imagen": "assets/images/destornillador.jpg"},
                            {"nombre": "Alicates", "imagen": "assets/images/alicate.png"},
                            {"nombre": "Taladros", "imagen": "assets/images/taladro.jpg"},
                          ];
                        } else if (categoriaNombre == "Electricidad") {
                          listaDeProductos = [
                            {"nombre": "Cables", "imagen": "assets/images/cables.png"},
                            {"nombre": "Interruptores", "imagen": "assets/images/interruptor.png"},
                          ];
                        }

                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => ProductosScreen(
                              categoria: categoriaNombre,
                              productos: listaDeProductos,
                            ),
                          ),
                        );
                      },
                      child: CategoriaCard(
                        categoria: categoriaNombre,
                        imagen: categoriaImagen,
                      ),
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
