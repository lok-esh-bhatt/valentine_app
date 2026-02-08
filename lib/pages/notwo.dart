import 'package:flutter/material.dart';
import 'package:hehehe/pages/trappage.dart';

class Notwo extends StatelessWidget {
  const Notwo({super.key});

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
              'JUSTT GOOO...... ',
              style: TextStyle(fontSize: 30),
            ),
            Text(
              'Now i will not give you any option To go forward ',
              style: TextStyle(fontSize: 20),
              textAlign: TextAlign.center,
            ),
            
            SizedBox(height: 10),
            Image.asset('assets/images/getout.gif'),
            SizedBox(height: 30),

            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => Trappage()),
                    );
                  },
                  child: Text('Go Back'),
                ),

              ],
            ),
          ],
        ),
      ),
    );
  }
}
