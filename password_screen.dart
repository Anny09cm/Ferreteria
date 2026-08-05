import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class PasswordScreen extends StatelessWidget {
  const PasswordScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: SingleChildScrollView(
          physics: const BouncingScrollPhysics(),
          padding: const EdgeInsets.symmetric(
            horizontal: 30,
            vertical: 20,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              const SizedBox(height: 50),

           
              Center(
                child: Image.asset( 
                  'assets/images/logo.png', 
                  width: 150,
                  height: 150,
                ),
              ),

              const SizedBox(height: 30),

              Center(
                child: Text(
                  'Recuperar Contraseña',
                  textAlign: TextAlign.center,
                  style: GoogleFonts.orienta(
                    textStyle: const TextStyle(
                      color: Colors.black87,
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ),

              const SizedBox(height: 15),

              Text(
                'Ingresa tu correo electrónico registrado y te enviaremos un enlace para restablecer tu contraseña.',
                textAlign: TextAlign.center,
                style: GoogleFonts.orienta(
                  textStyle: const TextStyle(
                    color: Colors.grey,
                    fontSize: 15,
                    height: 1.4,
                  ),
                ),
              ),

              const SizedBox(height: 40),

              Text(
                "Correo electrónico", 
                textAlign: TextAlign.center,
                style: GoogleFonts.orienta(
                  textStyle: const TextStyle(
                    color: Color(0xFFF4B400),
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),

              const SizedBox(height: 10),

              TextField(
                keyboardType: TextInputType.emailAddress,
                decoration: InputDecoration(
                  filled: true,
                  fillColor: const Color(0xFFF1F5F9),
                  hintText: 'ejemplo@correo.com',
                  hintStyle: const TextStyle(color: Colors.grey),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(20),
                    borderSide: BorderSide.none,
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(20),
                    borderSide: const BorderSide(
                      color: Color(0xFFf4B400),
                      width: 2,
                    ),
                  ),
                ),
              ),

              const SizedBox(height: 30),

              SizedBox(
                width: double.infinity,
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: const Color(0xFFf4B400),
                    padding: const EdgeInsets.symmetric(
                      vertical: 16,
                    ),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20),
                    ),
                  ),
                  onPressed: () {
                    ScaffoldMessenger.of(context).showSnackBar(
                      const SnackBar(
                        content: Text(
                          'Correo de recuperación enviado con éxito',
                        ),
                        backgroundColor: Color(0xFFf4B400),
                      ),
                    );
                  },
                  child: Text(
                    'Enviar enlace',
                    style: GoogleFonts.orienta(
                      textStyle: const TextStyle(
                        color: Colors.white,
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ),
              ),

              const SizedBox(height: 30),

              Wrap(
                alignment: WrapAlignment.center,
                children: [
                  const Text(
                    "¿Recordaste tu contraseña?",
                    style: TextStyle(
                      color: Colors.grey,
                      fontSize: 15,
                    ),
                  ),
                  GestureDetector(
                    onTap: () => Navigator.pop(context),
                    child: const Text(
                      " Iniciar sesión",
                      style: TextStyle(
                        color: Color(0xFFf4B400),
                        fontWeight: FontWeight.bold,
                        fontSize: 15,
                      ),
                    ),
                  ),
                ],
              ),

              const SizedBox(height: 20),
            ],
          ),
        ),
      ),
    );
  }
}