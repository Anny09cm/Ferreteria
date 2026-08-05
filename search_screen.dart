import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

// Asegúrate de importar tu widget de búsqueda actualizado
import 'package:ferraria/widgets/customsearch_bar.dart'; 
import 'package:ferraria/widgets/producto_categoria_card.dart';

class SearchScreen extends StatefulWidget {
  const SearchScreen({super.key});

  @override
  State<SearchScreen> createState() => _SearchScreenState();
}

class _SearchScreenState extends State<SearchScreen> {
  // Controller para capturar el texto escrito
  final TextEditingController _searchController = TextEditingController();

  // Lista base de todos los productos disponibles
  final List<Map<String, String>> _todosLosProductos = [
    {"nombre": "Martillo de Uña", "imagen": "assets/images/maritillo.jpg"},
    {"nombre": "Destornillador", "imagen": "assets/images/destornillador.jpg"},
    {"nombre": "Alicate de Presión", "imagen": "assets/images/alicate.png"},
    {"nombre": "Taladro Inalámbrico", "imagen": "assets/images/taladro.jpg"},
  ];

  // Lista dinámia para mostrar resultados en pantalla
  List<Map<String, String>> _productosFiltrados = [];

  @override
  void initState() {
    super.initState();
    // Inicialmente mostramos todos los productos
    _productosFiltrados = _todosLosProductos;
  }

  // Función para filtrar los productos según el texto ingresado
  void _filtrarProductos(String consulta) {
    setState(() {
      if (consulta.isEmpty) {
        _productosFiltrados = _todosLosProductos;
      } else {
        _productosFiltrados = _todosLosProductos
            .where((producto) => producto["nombre"]!
                .toLowerCase()
                .contains(consulta.toLowerCase()))
            .toList();
      }
    });
  }

  @override
  void dispose() {
    _searchController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            children: [

              const SizedBox(width: 20),

              CustomSearchBar(
                hintText: 'Buscar en la ferretería...',
                controller: _searchController,
                onChanged: _filtrarProductos,
              ),

              const SizedBox(height: 20),

              // 2. Resultados o mensaje de lista vacía
              Expanded(
                child: _productosFiltrados.isEmpty
                    ? Center(
                        child: Text(
                          'No se encontraron productos para "${_searchController.text}"',
                          style: GoogleFonts.poppins(
                            color: Colors.grey,
                            fontSize: 14,
                          ),
                        ),
                      )
                    : GridView.builder(
                        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                          crossAxisCount: 2,
                          crossAxisSpacing: 15,
                          mainAxisSpacing: 15,
                          mainAxisExtent: 240,
                        ),
                        itemCount: _productosFiltrados.length,
                        itemBuilder: (context, index) {
                          return ProductoCard(
                            nombre: _productosFiltrados[index]["nombre"] ?? '',
                            imagen: _productosFiltrados[index]["imagen"] ?? '',
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