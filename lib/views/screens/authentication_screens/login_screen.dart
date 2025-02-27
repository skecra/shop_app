import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:shop_app/views/screens/authentication_screens/register_screen.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white.withOpacity(0.95,),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Center(
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

              SizedBox(
                height: 10,
              ),

              TextFormField(
                decoration: InputDecoration(
                  fillColor: Colors.white,
                  filled: true,
                  border: OutlineInputBorder(borderRadius: BorderRadius.circular(9)),
                focusedBorder: InputBorder.none,
                  enabledBorder: InputBorder.none,
                  labelText: 'enter your email',
                  labelStyle: GoogleFonts.getFont('Nunito Sans',
                  fontSize: 14,
                  letterSpacing: 0.1),
                  prefixIcon: Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: Image.asset('assets/icons/email.png', width: 20,
                    height: 20,),
                  )
        
                ),
        
              ),
        
              SizedBox(
                height: 20,
              ),

              Align(
                  alignment: Alignment.topLeft,
                  child: Text('Password', style: GoogleFonts.getFont('Nunito Sans',
                      color: Color(0xFF0d120E),
                      fontWeight: FontWeight.w600,
                      letterSpacing: 0.2),


                  )
              ),


              SizedBox(
                height: 10,
              ),


              TextFormField(
                decoration: InputDecoration(
                    fillColor: Colors.white,
                    filled: true,
                    border: OutlineInputBorder(borderRadius: BorderRadius.circular(9)),
                    focusedBorder: InputBorder.none,
                    enabledBorder: InputBorder.none,
                    labelText: 'enter your password',
                    labelStyle: GoogleFonts.getFont('Nunito Sans',
                        fontSize: 14,
                        letterSpacing: 0.1),
                    prefixIcon: Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: Image.asset('assets/icons/password.png', width: 20,
                        height: 20,),
                    ),
                  suffixIcon: Icon(Icons.visibility)
        
                ),
        
              ),

              SizedBox(height: 40,),

              Container(
                width: 319,
                height: 50,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(35),
                  gradient: LinearGradient(colors:
                  [Color(0xFF4A19BC),
                    Color(0xf08468d8)])
                ),
                child: Center(child: Text('Sign in',
                style: GoogleFonts.getFont('Lato',
                fontSize: 17,
                fontWeight: FontWeight.bold,
                color: Colors.white),
                ),)
              ),

              SizedBox(height: 10,),

              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text('Need an account?', style: GoogleFonts.roboto(fontWeight: FontWeight.w500,
                  letterSpacing: 1),),
                  InkWell(
                    onTap: () {
                      Navigator.push(
                          context, MaterialPageRoute(builder: (context) {
                        return RegisterScreen();
                      }));
                    },

                      child: Text('Sign up', style: GoogleFonts.roboto(fontWeight: FontWeight.bold, letterSpacing:1,
                      color: Color(0xFF4A19BC))
                      ,
                      )
                      ,
                  )

                ],
              )

            ],
          ),
        ),
      ),
    );
  }
}