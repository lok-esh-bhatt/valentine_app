import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Notepage extends StatelessWidget {
  const Notepage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          gradient: RadialGradient(
            colors: [Colors.pinkAccent, Colors.redAccent],
          ),
        ),
        child: Center(
          child: Padding(
            padding: const EdgeInsets.all(15.0),
            child: Stack(
              children: [
                SizedBox(
                  height: double.infinity,

                  child: Image.asset(
                    'assets/images/coffeepage .jpg',
                    fit: BoxFit.fill,
                  ),
                ),

                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      SizedBox(height: 0),
                      Text(
                        'My Love',
                        style: GoogleFonts.playwriteNgModern(
                          fontSize: 35,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      SizedBox(height: 40),

                      Text(
                        'This Valentine’s Day feels special because you said yes.',
                        style: GoogleFonts.playwriteNgModern(fontSize: 20),
                      ),
                      SizedBox(height: 15),
                      Text(
                        'You didn’t just accept my proposal you accepted me, my flaws, my dreams, and my heart I promise to respect you, support you, and always try to make you smile, even on your worst days.Thank you for choosing me. I’ll keep choosing you, every single day. ❤️Forever yours.',
                        style: GoogleFonts.playwriteNgModern(fontSize: 20),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
