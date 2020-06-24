import 'package:flutter/material.dart';

class SongControls extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Container(
      width: size.width * 0.45,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(Icons.repeat_one, size: 40.0, color: Colors.white),
          SizedBox(width: size.width * 0.01),
          Icon(Icons.skip_previous, size: 40.0, color: Colors.white),
          SizedBox(width: size.width * 0.01),
          Container(
            child: Icon(Icons.play_arrow, size: 40.0, color: Colors.white),
            padding: const EdgeInsets.all(12.0),
            decoration: BoxDecoration(
              color: Colors.greenAccent,
              borderRadius: BorderRadius.circular(60.0)
            ),
          ),
          SizedBox(width: size.width * 0.01),
          Icon(Icons.skip_next, size: 40.0, color: Colors.white),
          SizedBox(width: size.width * 0.01),
          Icon(Icons.shuffle, size: 40.0, color: Colors.white),
        ],
      ),
    );
  }
}
