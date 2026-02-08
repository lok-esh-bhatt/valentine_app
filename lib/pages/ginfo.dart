import 'package:flutter/material.dart';
import 'package:hehehe/pages/puzzle.dart';

class Ginfo extends StatelessWidget {
  const Ginfo({super.key});

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
              'OKAY SO NOW YOU HAVE CHANGED YOUR MIND',
              style: TextStyle(fontSize: 25, fontWeight: FontWeight.w700),
              textAlign: TextAlign.center,
            ),
            SizedBox(height: 10),
            Image.asset('assets/images/happy.gif', height: 200, width: 200),
            SizedBox(height: 30),
            Text(
              'Now,You will play a game for me where you have to find a yes button imbedded in the photograph.',
              style: TextStyle(fontSize: 20),
              textAlign: TextAlign.center,
            ),
            SizedBox(height: 10),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => HiddenButtonGame()),
                );
              },
              child: Text('GO ON 🧐️'),
            ),
          ],
        ),
      ),
    );
  }
}
