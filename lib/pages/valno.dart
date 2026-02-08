import 'package:flutter/material.dart';
import 'package:hehehe/pages/noone.dart';

class Valno extends StatelessWidget {
  const Valno({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: double.infinity,
          width: double.infinity,
        decoration: BoxDecoration(
          gradient: RadialGradient(colors: [Colors.pinkAccent.shade700,Colors.purple.shade400],radius: 0.9)
      
        ),
        child: 
        Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [

            Text('WHY DO YOU SAY NOOOOO??? 😒️😢️😭️',style: TextStyle(fontSize: 25,),textAlign: TextAlign.center,),
            SizedBox(height: 10,),
            Image.asset('assets/images/cry.gif',height: 200,width: 200,),
            SizedBox(height: 30,),
            ElevatedButton(onPressed: (){
              Navigator.push(
                context, MaterialPageRoute(builder: (context)=> Noone())

              );

            }, child: Text('BYEE 😔️'))
            
          ],
        ),
      ),
      
    );
  }
}