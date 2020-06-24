import 'dart:math';

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Scrubber extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Container(
      width: size.width * 0.45,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            '1:26',
            style: GoogleFonts.montserrat(fontSize: 18.0, color: Colors.white),
          ),
          SizedBox(width: size.width * 0.02),
          ScrubberWeights(),
          SizedBox(width: size.width * 0.01),
          Text(
            '4:03',
            style: GoogleFonts.montserrat(fontSize: 18.0, color: Colors.white),
          ),
        ],
      ),
    );
  }
}

class ScrubberWeights extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Row(
        children: List.generate(
          18,
          (index) {
            bool isNotLast = index < 18;
            double height = Random().nextDouble() * 60;
            return isNotLast
                ? Container(
                    width: 2.0,
                    height: height,
                    color: index > 9 ? Colors.green.shade100.withOpacity(0.2) : Colors.white,
                    margin: const EdgeInsets.only(right: 20.0),
                  )
                : Container(
                    width: 2.0,
                    height: height,
                    color: index > 9 ? Colors.green.shade100.withOpacity(0.2) : Colors.white,
                  );
          },
        ),
      ),
    );
  }
}
