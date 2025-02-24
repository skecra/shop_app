import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Login Screen', style: GoogleFonts.getFont('Lato',
                color: Color(0xFF0d120E),
                fontWeight: FontWeight.bold,
                letterSpacing: 0.2,
                fontSize: 23
              ),
              
              ),
              Text('To explore the world exclusive', 
              style: GoogleFonts.getFont('Lato',
                color: Color(0xFF0d120E),
                fontWeight: FontWeight.bold,
                letterSpacing: 0.2,
                fontSize: 15
              )
              ),
              Image.asset('assets/images/loginTest.png', width: 200, 
              height: 200,),

             Align(
              alignment: Alignment.topLeft,
              child: Text('Email', style: GoogleFonts.getFont('Nunito Sans', 
              color: Color(0xFF0d120E),
              fontWeight: FontWeight.w600,
              letterSpacing: 0.2),
              )
             
              
             ),
            TextFormField(
              decoration: InputDecoration(
                fillColor: Colors.white,
                filled: true,
                border: OutlineInputBorder(borderRadius: BorderRadius.circular(9)),
              focusedBorder: InputBorder.none,
                enabledBorder: InputBorder.none
              ),

            )

          ],
        ),
      ),
    );
  }
}