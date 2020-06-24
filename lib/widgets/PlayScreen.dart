import 'package:flutter/material.dart';
import 'package:music_app_ui/widgets/play_screen/Player.dart';

class PlayScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Container(
      width: size.width * 0.45,
      height: size.height,
      child: Stack(
        children: [
          Container(
            width: size.width * 0.45,
            decoration: BoxDecoration(
              image: DecorationImage(
                fit: BoxFit.cover,
                image: NetworkImage(
                  'https://wallpapersafari.com/download/wWbj6t',
                ),
              ),
            ),
          ),
          Container(
            width: size.width * 0.45,
            decoration: BoxDecoration(
              backgroundBlendMode: BlendMode.color,
              gradient: LinearGradient(
                begin: Alignment.bottomCenter,
                end: Alignment.topCenter,
                colors: [Colors.black, Colors.transparent],
              ),
            ),
          ),
          Positioned(
            bottom: 0,
            child: Player(),
          ),
        ],
      ),
    );
  }
}
