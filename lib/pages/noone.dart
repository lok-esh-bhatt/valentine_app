import 'package:flutter/material.dart';
import 'package:hehehe/pages/notwo.dart';
import 'package:hehehe/pages/valno.dart';

class Noone extends StatelessWidget {
  const Noone({super.key});

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
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text(
              'WHY ARE YOU HERE GO NOW.. 😒️',
              style: TextStyle(fontSize: 25),
              textAlign: TextAlign.center,
            ),
            SizedBox(height: 10),
            Image.asset('assets/images/dnd.gif'),
            SizedBox(height: 30),

            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => Valno()),
                    );
                  },
                  child: Text('Go Back'),
                ),

                ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => Notwo()),
                    );
                  },
                  child: Text('Go Forward'),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
