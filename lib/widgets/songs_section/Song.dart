import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:music_app_ui/models/SongModel.dart';

class Song extends StatelessWidget {
  final SongModel song;
  final bool isSelected;

  Song({this.song, this.isSelected});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          width: 60,
          height: 60,
          decoration: BoxDecoration(
              color: Colors.blueAccent,
              borderRadius: BorderRadius.all(Radius.circular(6.0)),
              image: DecorationImage(
                image: NetworkImage(song.image),
              )),
        ),
        SizedBox(width: 12),
        Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(song.name,
                style: GoogleFonts.montserrat(
                    fontSize: 16.0,
                    fontWeight: FontWeight.w600,
                    color: isSelected ? Colors.green[200] : Colors.black)),
            Text(song.artists,
                style: GoogleFonts.montserrat(
                    fontSize: 16.0,
                    fontWeight: FontWeight.w400,
                    color: isSelected ? Colors.green[200] : Colors.black))
          ],
        ),
      ],
    );
  }
}
