import 'package:flutter/material.dart';
import 'package:music_app_ui/widgets/play_screen/Scrubber.dart';
import 'package:music_app_ui/widgets/play_screen/SongControls.dart';

class Controls extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Container(
      child: Column(
        children: [
          Scrubber(),
          SizedBox(height: size.height * 0.02),
          SongControls(),
          SizedBox(height: size.height * 0.02),
        ],
      ),
    );
  }
}
