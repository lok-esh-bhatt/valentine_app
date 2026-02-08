import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Heading1 extends StatelessWidget {
  final String text;
  
  const Heading1({super.key,required this.text});

  @override
  Widget build(BuildContext context) {
    return Text(
            text,
            style: GoogleFonts.poppins(
              fontSize: 25,
              fontWeight: FontWeight.w700,

            ),
          );
  }
}

class Heading2 extends StatelessWidget {
  final String text;
  const Heading2({super.key,required this.text});

  @override
  Widget build(BuildContext context) {
    return Text(
            text,
            style: GoogleFonts.poppins(
              fontSize: 20,
              fontWeight: FontWeight.w500,
            ),
          );
  }
}

class Heading3 extends StatelessWidget {
  final String text;
  const Heading3({super.key,required this.text});

  @override
  Widget build(BuildContext context) {
    return Text(
            text,
            style: GoogleFonts.poppins(
              fontSize: 15,
              fontWeight: FontWeight.normal,
            ),
          );
  }
}


