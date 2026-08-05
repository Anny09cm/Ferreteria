import 'package:flutter/material.dart';

class CustomSearchBar extends StatelessWidget {
  final String hintText;
  final TextEditingController controller;
  final ValueChanged<String>? onChanged; // Permite escuchar cambios al escribir

  const CustomSearchBar({
    super.key,
    required this.hintText,
    required this.controller,
    this.onChanged,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(20),
        boxShadow: const [
          BoxShadow(
            color: Color.fromARGB(255, 175, 180, 165),
            blurRadius: 10,
          )
        ],
      ),
      child: Padding(
        // Corregido: EdgeInsets en lugar de EdgeInsetsGeometry
        padding: const EdgeInsets.symmetric(
          horizontal: 16,
          vertical: 4, // Ajustado a 4 para no inflar demasiado la altura junto al TextField
        ),
        child: TextField(
          controller: controller,
          onChanged: onChanged, // Se asigna el callback
          decoration: InputDecoration(
            hintText: hintText,
            prefixIcon: const Icon(Icons.search, color: Color(0xFFF4B400)),
            border: InputBorder.none, // Elimina la línea inferior por defecto
          ),
        ),
      ),
    );
  }
}