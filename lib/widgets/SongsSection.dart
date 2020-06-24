import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:music_app_ui/widgets/songs_section/AlbumsSection.dart';
import 'package:music_app_ui/widgets/songs_section/HotReleasesSection.dart';
import 'package:music_app_ui/widgets/songs_section/PopularSection.dart';
import 'package:music_app_ui/widgets/songs_section/TopBar.dart';

class SongsSection extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Container(
      width: size.width * 0.55,
      padding: const EdgeInsets.only(left: 48.0, right: 48.0, top: 24.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          TopBar(),
          SizedBox(height: size.height * 0.06),
          Text('Explore Albums',
              style: GoogleFonts.montserrat(
                  fontSize: 34.0, fontWeight: FontWeight.w600)),
          SizedBox(height: size.height * 0.02),
          AlbumsSection(),
          SizedBox(height: size.height * 0.02),
          Text('Hot Releases',
              style: GoogleFonts.montserrat(
                  fontSize: 20.0, fontWeight: FontWeight.w600)),
          SizedBox(height: size.height * 0.02),
          HotReleasesSection(),
          SizedBox(height: size.height * 0.02),
          Text('Popular',
              style: GoogleFonts.montserrat(
                  fontSize: 20.0, fontWeight: FontWeight.w600)),
          SizedBox(height: size.height * 0.02),
          PopularSection(),
        ],
      ),
    );
  }
}
