import 'package:flutter/material.dart';
import 'package:hehehe/pages/notepage.dart';

class Valyes extends StatelessWidget {
  const Valyes({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: double.infinity,
          width: double.infinity,
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: [Colors.pink.shade400,Colors.red.shade600],
            begin: AlignmentGeometry.topLeft,
            end: AlignmentGeometry.bottomRight,
          )
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text('I WAS KNOWING YOU LOVE ME...😘️❤️',style: TextStyle(fontSize: 25,),textAlign: TextAlign.center,),
            SizedBox(height:13),
            Image.asset('assets/images/love.gif'),
            SizedBox(height: 20,),
            ElevatedButton(onPressed: (){
              Navigator.push(context,MaterialPageRoute(builder: (context)=> Notepage()));
            }, child: Text('I Have Something For You')),
          ],
        ),
      ),
    );
  }
}