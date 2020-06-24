import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:music_app_ui/widgets/play_screen/Controls.dart';

class Player extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Container(
      width: size.width * 0.45,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Text('Death Bed', style: GoogleFonts.montserrat(fontSize: 34.0, color: Colors.white)),
          SizedBox(height: size.height * 0.005),
          Text('Powfu & Beabadoobee', style: GoogleFonts.montserrat(fontSize: 28.0, color: Colors.white, fontWeight: FontWeight.w200)),
          SizedBox(height: size.height * 0.02),
          Controls(),
        ],
      ),
    );
  }
}