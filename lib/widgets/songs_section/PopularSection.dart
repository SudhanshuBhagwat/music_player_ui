import 'package:flutter/material.dart';
import 'package:music_app_ui/widgets/songs_section/CategoryPills.dart';
import 'package:music_app_ui/widgets/songs_section/Playlist.dart';

class PopularSection extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Expanded(
      child: Column(
        children: [
          CategoryPills(),
          SizedBox(height: size.height * 0.026),
          Playlist()
        ],
      ),
    );
  }
}
