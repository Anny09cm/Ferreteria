import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import 'package:ferraria/screens/password_screen.dart';
import 'package:ferraria/screens/registrer_screen.dart';
import 'package:ferraria/screens/main_screen.dart';

class LoginScreen extends StatelessWidget { 
  const LoginScreen({super.key}); 

  @override 
  Widget build(BuildContext context) { 
    return Scaffold( 
      body: Column( 
        children: [ 
          Center( 
            child: Image.asset( 
              '', 
              width: MediaQuery.of(context).size.height * 0.30, 
              height: MediaQuery.of(context).size.height * 0.30, 
            ), 
          ), 

          Expanded( 
            child: Container(  
              decoration: const BoxDecoration(
                color: Color(0xFFF4B400),
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(30),
                  topRight: Radius.circular(30),
                ),
              ),
              child: Padding( 
                padding: const EdgeInsets.symmetric( 
                  horizontal: 25, 
                  vertical: 15, 
                ), 
                child: SingleChildScrollView(
                  physics: const BouncingScrollPhysics(),
                  child: Column( 
                    mainAxisSize: MainAxisSize.min,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [ 
                      SizedBox(
                        width: double.infinity,
                        child: Text( 
                          'Inicia Sesión', 
                          textAlign: TextAlign.center,
                          style: GoogleFonts.orienta( 
                            textStyle: const TextStyle( 
                              color: Colors.white, 
                              fontSize: 24, 
                              fontWeight: FontWeight.bold, 
                            ), 
                          ), 
                        ), 
                      ),

                      const SizedBox(height: 15), 

                      Text( 
                        'Correo electrónico', 
                        style: GoogleFonts.orienta( 
                          textStyle: const TextStyle( 
                            color: Colors.white, 
                            fontSize: 20, 
                          ), 
                        ), 
                      ), 

                      const SizedBox(height: 10), 

                      TextField( 
                        decoration: InputDecoration( 
                          filled: true, 
                          fillColor: Colors.white, 
                          border: OutlineInputBorder( 
                            borderRadius: BorderRadius.circular(20), 
                            borderSide: BorderSide.none, 
                          ), 
                          hintText: 'Correo', 
                        ), 
                      ), 

                      const SizedBox(height: 10), 

                      Text( 
                        'Ingresa tu contraseña', 
                        style: GoogleFonts.orienta( 
                          textStyle: const TextStyle( 
                            color: Colors.white, 
                            fontSize: 20, 
                          ), 
                        ), 
                      ), 

                      const SizedBox(height: 15), 

                      TextField( 
                        obscureText: true,
                        decoration: InputDecoration( 
                          filled: true, 
                          fillColor: Colors.white, 
                          border: OutlineInputBorder( 
                            borderRadius: BorderRadius.circular(20), 
                            borderSide: BorderSide.none, 
                          ), 
                          hintText: 'Contraseña', 
                        ), 
                      ), 

                      const SizedBox(height: 15),

                      SizedBox(
                        width: double.infinity,
                        child: ElevatedButton( 
                          style: ElevatedButton.styleFrom( 
                            backgroundColor: const Color.fromARGB(255, 244, 146, 0), 
                            padding: const EdgeInsets.symmetric(  
                              vertical: 15, 
                            ),
                          ), 
                          onPressed: () {
                            Navigator.pushReplacement( 
                              context, 
                              MaterialPageRoute( 
                                builder: (context) => const MainScreen(), 
                              ), 
                            ); 
                          }, 
                          child: Text(
                            'Continuar', 
                            style: GoogleFonts.orienta(
                              textStyle: const TextStyle( 
                                color: Colors.white, 
                                fontSize: 16 
                              ),
                            ),
                          ),
                        ),
                      ),

                      const SizedBox(height: 15),

                      Align (
                        alignment: Alignment.center,
                        child: TextButton(
                          onPressed: () {
                            Navigator.push(
                              context, 
                              MaterialPageRoute(
                                builder: (context) => const PasswordScreen(), 
                              ),
                            );
                          },
                          child: const Text(
                            "¿Olvidaste tu contraseña?", 
                            style: TextStyle(
                              fontSize: 16,
                              color: Colors.white70, // Cambiado a un tono blanco para que resalte sobre el verde
                            ),
                          ), 
                        ),
                      ),

                      const SizedBox(height: 15),
                      
                      const Row (
                        children: [
                          Expanded(child: Divider()),
                          Padding(
                            padding: EdgeInsets.symmetric(horizontal: 10),
                            child: Text(
                              "O continua con", 
                              style: TextStyle(
                                fontSize: 16,
                                color: Color.fromARGB(255, 244, 146, 0),
                              ),
                            ),
                          ),
                          Expanded(child: Divider()),
                        ],
                      ),

                      const SizedBox(height: 20),

                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          ElevatedButton.icon(
                            onPressed: (){},
                            icon: const FaIcon(FontAwesomeIcons.google),
                            label: const Text("Google"),
                          ),

                          ElevatedButton.icon(
                            onPressed: (){},
                            icon: const FaIcon(FontAwesomeIcons.apple),
                            label: const Text("Apple"),
                          ),
                        ],
                      ),

                      const SizedBox(height: 15),

                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          const Text(
                            "¿No tienes una cuenta?", 
                            style: TextStyle(
                              fontSize: 16,
                              color:  Color.fromARGB(255, 244, 146, 0),
                            ),
                          ),
                          GestureDetector(
                            onTap: (){
                              Navigator.push(
                                context, 
                                MaterialPageRoute(
                                  builder: (context) => const RegisterScreen(),
                                ),
                              );
                            },
                            child: const Text(
                              " Crear cuenta",
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 16,
                                color: Color.fromARGB(255, 244, 146, 0),
                              ),
                            ),
                          )
                        ],
                      ),
                    ], 
                  ),
                ), 
              ), 
            ), 
          ),
        ], 
      ), 
    ); 
  } 
}
