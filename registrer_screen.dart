import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import 'package:ferraria/screens/main_screen.dart';

class RegisterScreen extends StatelessWidget {
   const RegisterScreen({super.key});


  @override

   Widget build(BuildContext context) {
     return Scaffold(
       body: Column(
          children: [
            Center(
                child: Image.asset(
                  'assets/images/brote.png',
                  width: MediaQuery.of(context).size.height * 0.25,
                  height: MediaQuery.of(context).size.height * 0.25,
                ),
              ),
  
              
              Expanded(
                child: Container(  
                  decoration: BoxDecoration(
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
                        'Registrate', 
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

                    const SizedBox(height: 20),

                    Text(
                      "Nombre completo",
                      style: GoogleFonts.orienta(
                        textStyle: TextStyle(
                          color: Colors.white,
                          fontSize: 16,
                        )
                      ) ,
                    ),

                    const SizedBox(height: 15),

                    TextField(
                      decoration: InputDecoration(
                        filled: true, 
                        fillColor: Colors.white, 
                        border: OutlineInputBorder( 
                          borderRadius: BorderRadius.circular(20), 
                          borderSide: BorderSide.none, 
                        ), 
                        hintText: 'Nombre',  
                      ),
                    ),

                    const SizedBox(height: 20),

                    Text(
                      "Teléfono",
                      style: GoogleFonts.orienta(
                        textStyle: TextStyle(
                          color: Colors.white,
                          fontSize: 16,
                        )
                      ) ,
                    ),

                    const SizedBox(height: 15),

                    TextField(
                      decoration: InputDecoration(
                        filled: true, 
                        fillColor: Colors.white, 
                        border: OutlineInputBorder( 
                          borderRadius: BorderRadius.circular(20), 
                          borderSide: BorderSide.none, 
                        ), 
                        hintText: 'Teléfono',  
                      ),
                    ),
                    const SizedBox(height: 20),

                    Text(
                      "Correo", 
                      style: GoogleFonts.orienta(
                        textStyle: TextStyle(
                          color: Colors.white,
                          fontSize: 16,
                        )
                      ),
                    ),

                    const SizedBox(height: 15),

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

                    const SizedBox(height: 20),

                    Text(
                      "Crea una contraseña", 
                      style: GoogleFonts.orienta(
                        textStyle: TextStyle(
                          color: Colors.white,
                          fontSize: 18,
                        )
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
                        hintText: 'Contraseña nueva', 
                      ),
                    ),

                    const SizedBox(height: 15),

                    Text(
                      "Confirma la contraseña", 
                      style: GoogleFonts.orienta(
                        textStyle: TextStyle(
                          color: Colors.white,
                          fontSize: 18,
                        )
                      ),
                    ),

                    const SizedBox(height: 20),

                    TextField(
                      obscureText: true,
                      decoration: InputDecoration( 
                        filled: true, 
                        fillColor: Colors.white, 
                        border: OutlineInputBorder( 
                          borderRadius: BorderRadius.circular(20), 
                          borderSide: BorderSide.none, 
                        ), 
                        hintText: 'Contraseña nueva', 
                      ),
                    ),

                    const SizedBox(height: 20),

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
                          style: GoogleFonts.orienta
                          (textStyle: const TextStyle( 
                            color: Colors.white, 
                            fontSize: 16 
                          ),
                        ),
                        ),
                      ),
                    ),

                    const SizedBox(height: 20
                    ),

                    Row (
                      children: [
                        Expanded(child: Divider()),
                        Padding(
                          padding: EdgeInsets.symmetric(horizontal: 10),
                          child: Text("O registrate con", 
                          style: TextStyle(
                            fontSize: 16,
                            color: const Color.fromARGB(255, 244, 146, 0),
                          ),
                          ),
                          ),
                          Expanded(child: Divider()),
                      ],
                      ),

                    const SizedBox(height: 20),

                    Row(
                      mainAxisAlignment:
                      MainAxisAlignment.spaceEvenly,
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