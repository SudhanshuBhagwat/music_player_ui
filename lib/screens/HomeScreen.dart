import 'package:flutter/material.dart';
import 'package:music_app_ui/widgets/PlayScreen.dart';
import 'package:music_app_ui/widgets/SongsSection.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: MediaQuery.of(context).size.width,
        child: Row(
          children: [
            PlayScreen(),
            SongsSection(),
          ],
        ),
      ),
    );
  }
}
