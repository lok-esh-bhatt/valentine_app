import 'dart:math';
import 'package:flutter/material.dart';
import 'package:get_x/get_core/src/get_main.dart';
import 'package:get_x/get_navigation/src/extension_navigation.dart';
import 'package:hehehe/pages/valyes.dart';

class HiddenButtonGame extends StatefulWidget {
  const HiddenButtonGame({super.key});

  @override
  State<HiddenButtonGame> createState() => _HiddenButtonGameState();
}

class _HiddenButtonGameState extends State<HiddenButtonGame> {
  double top = 100;
  double left = 100;
  bool found = false;

  void randomPosition() {
    final random = Random();
    final size = MediaQuery.of(context).size;

    setState(() {
      top = random.nextDouble() * (size.height - 100);
      left = random.nextDouble() * (size.width - 100);
      found = false;
    });
  }

  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((_) {
      randomPosition();
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(
          child: const Text(
            "Will You Be My Valentine?",
            style: TextStyle(color: Colors.white),
          ),
        ),
        backgroundColor: Colors.redAccent.shade400,
        automaticallyImplyLeading: false,
        shadowColor: Colors.black,
      ),
      body: Stack(
        children: [
          // Background Image
          Positioned.fill(
            child: Image.asset("assets/images/bg.jpg", fit: BoxFit.cover),
          ),

          if (found)
            const Center(
              child: Text(
                "You Found It ❤️",
                style: TextStyle(fontSize: 28, color: Colors.white),
              ),
            ),

          // Hidden Button
          Positioned(
            top: top,
            left: left,
            child: Opacity(
              opacity: 0.15, // make hidden
              child: ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => const Valyes()),
                  );
                  Get.snackbar( "❤️ I LOVE YOU ❤️","Reply me back in DM 😅️");
                  
                },

                child: const Text("YES"),
              ),
            ),
          ),
        ],
      ),

      floatingActionButton: FloatingActionButton(
        onPressed: randomPosition,
        child: const Icon(Icons.refresh),
      ),
    );
  }
}
