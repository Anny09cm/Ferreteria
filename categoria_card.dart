import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CategoriaCard extends StatelessWidget {
  final String imagen;
  final String categoria;

  const CategoriaCard({
    super.key,
    required this.imagen,
    required this.categoria,
  });

 @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 4,
      shadowColor: const Color.fromARGB(255, 175, 180, 165),
      color: Colors.white,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(22),
      ),
      child: Padding(
        padding: const EdgeInsets.all(10),
        child: Stack(
          clipBehavior: Clip.none,
    
          children: [
            Column(
              children: [

                const SizedBox(height: 10),

                ClipRRect(
                  borderRadius: BorderRadius.circular(18),
                  child: Image.asset(
                    imagen,
                    height: 140,
                    width: double.infinity,
                    fit: BoxFit.cover,
                  ),
                ),

                const SizedBox(height: 10),

                Text(
                  categoria, 
                  textAlign: TextAlign.center,
                  style: GoogleFonts.orienta(
                    textStyle: const TextStyle(
                      fontSize: 18,
                      color: Colors.black87,
                    ),
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