import 'dart:math';

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hehehe/methods/methods.dart';
import 'package:hehehe/methods/textmethod.dart';
import 'package:hehehe/pages/ginfo.dart';

class Trappage extends StatefulWidget {
  const Trappage({super.key});

  @override
  State<Trappage> createState() => _TrappageState();
}

class _TrappageState extends State<Trappage> {
  int count = 0;
  double top = 620;
  double left = 175;

  void moveButton() {
    final random = Random();
    final size = MediaQuery.of(context).size;
    count = 1;

    setState(() {
      top = random.nextDouble() * (size.height - 80);
      left = random.nextDouble() * (size.width - 120);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: double.infinity,
        width: double.infinity,
        decoration: BoxDecoration(
          gradient: RadialGradient(
            colors: [Colors.pinkAccent.shade700, Colors.purple.shade400],
            radius: 0.9,
          ),
        ),
        child: Stack(
          children: [
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text('HEHEHEHE  😜️', style: TextStyle(fontSize: 25)),
                SizedBox(height: 10),
                Text('Its all a love trap..', style: TextStyle(fontSize: 25)),
                SizedBox(height: 10),
                Image.asset('assets/images/trap.gif'),
                SizedBox(height: 30),
                Heading2(text: 'I Will Give You One More Chance.'),
                SizedBox(height: 2),
                Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Glasscontainer(
                    width: double.infinity,
                    height: 150,

                    child: Center(
                      child: Column(
                        children: [
                          Text(
                            'DO YOU WANT TO CHANGE THE CHOICE YOU MADE EARLIER ?',
                            style: GoogleFonts.roboto(
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                            ),
                            textAlign: TextAlign.center,
                          ),
                          SizedBox(height: 7),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              ElevatedButton(
                                onPressed: () {
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                      builder: (context) => Ginfo(),
                                    ),
                                  );
                                },
                                child: Text('YES'),
                              ),
                              if (count == 0)

                                ElevatedButton(
                                  onPressed: moveButton,
                                  child: const Text("NO"),
                                ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                SizedBox(height: 10),
              ],
            ),
            if (count == 1)
              Positioned(
                top: top,
                left: left,
                child: ElevatedButton(
                  onPressed: moveButton,
                  child: const Text("NO"),
                ),
              ),
          ],
        ),
      ),
    );
  }
}
