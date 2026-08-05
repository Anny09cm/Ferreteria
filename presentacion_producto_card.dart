import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';

class PresentacionCard extends StatefulWidget {
  const PresentacionCard({super.key});

  @override
  State<PresentacionCard> createState() => _PresentacionCardState();
}

class _PresentacionCardState extends State<PresentacionCard> {
  // Añadidas URLs de prueba para que no se renderice vacío
  final List<String> imagenesProducto = [
    'https://picsum.photos/300/200?random=1',
    'https://picsum.photos/300/200?random=2',
    'https://picsum.photos/300/200?random=3',
  ];

  int _indiceActual = 0;

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 4,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
      clipBehavior: Clip.antiAlias, // Evita desbordamiento en bordes redondeados
      child: SizedBox(
        width: 300,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisSize: MainAxisSize.min,
          children: [
            Stack(
              alignment: Alignment.bottomCenter,
              children: [
                // 1. CarouselSlider como primer hijo del Stack
                CarouselSlider(
                  options: CarouselOptions(
                    height: 200.0,
                    viewportFraction: 1.0,
                    enlargeCenterPage: false,
                    enableInfiniteScroll: imagenesProducto.length > 1,
                    onPageChanged: (index, reason) {
                      setState(() {
                        _indiceActual = index;
                      });
                    },
                  ),
                  items: imagenesProducto.map((url) {
                    return Image.network(
                      url,
                      fit: BoxFit.cover,
                      width: double.infinity,
                      errorBuilder: (context, error, stackTrace) =>
                          const Center(child: Icon(Icons.broken_image)),
                    );
                  }).toList(),
                ), // Cierre del CarouselSlider

                // 2. Positioned como SEGUNDO hijo del Stack (con la condición `if`)
                if (imagenesProducto.length > 1)
                  Positioned(
                    bottom: 10,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: imagenesProducto.asMap().entries.map((entry) {
                        return Container(
                          width: 8.0,
                          height: 8.0,
                          margin: const EdgeInsets.symmetric(horizontal: 4.0),
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            // Cambio de color según la página seleccionada
                            color: _indiceActual == entry.key
                                ? Colors.white
                                : Colors.white.withValues(),
                          ),
                        );
                      }).toList(),
                    ),
                  ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}