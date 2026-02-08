import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
//import 'package:google_fonts/google_fonts.dart';

import 'package:hehehe/pages/valno.dart';
import 'package:hehehe/pages/valyes.dart';


class Homepage extends StatelessWidget {
  const Homepage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 214, 96, 138),
        title: Center(
          child: Text(
            '❤️ Ask Her ❤️',
            
            style: TextStyle(color: const Color.fromARGB(255, 226, 207, 207))
          ),
        ),
        elevation: 10,
        shadowColor: Colors.pink.shade300,
      ),
      body: Container(
        decoration: BoxDecoration(
          gradient: RadialGradient(
            radius: 0.9,
            colors: [Colors.pink.shade500, Colors.red.shade400],
          ),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(height: 50),

            Text(
              'Will you be my valentine? ❤️',
              textAlign: TextAlign.center,
              style: GoogleFonts.poppins(fontWeight: FontWeight.bold,fontSize: 25),
            ),

            SizedBox(height: 30),

            Image.asset('assets/images/pull.gif', height: 300, width: 300),

            SizedBox(height: 25),

            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => const Valyes()),
                    );
                  },
                  child: Text('Yes', style: TextStyle(fontSize: 25)),
                ),
                ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => const Valno()),
                    );
                  },
                  child: Text('No', style: TextStyle(fontSize: 25)),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
