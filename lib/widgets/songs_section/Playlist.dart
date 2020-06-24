import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:music_app_ui/models/SongModel.dart';
import 'package:music_app_ui/widgets/songs_section/Song.dart';

class Playlist extends StatelessWidget {
  final List<SongModel> songs = [
    SongModel('Senorita', 'Shawn Mendes', image: 'https://upload.wikimedia.org/wikipedia/en/thumb/8/8d/Shawn_Mendes_and_Camila_Cabello_-_Se%C3%B1orita.png/220px-Shawn_Mendes_and_Camila_Cabello_-_Se%C3%B1orita.png'),
    SongModel('Death Bed', 'Powfu', image: 'https://opsikpro.info/wp-content/uploads/2020/04/Powfu-Drops-Video-For-Viral-Hit-%E2%80%9Cdeath-bed-coffee-for-your-head%E2%80%9D.jpg'),
    SongModel('Say So', 'Doja Cat', image: 'https://upload.wikimedia.org/wikipedia/en/thumb/8/87/Doja_Cat_-_Hot_Pink.png/220px-Doja_Cat_-_Hot_Pink.png'),
    SongModel('Godzilla', 'Eminem', image: 'https://upload.wikimedia.org/wikipedia/en/8/80/Eminem_-_Music_to_Be_Murdered_By.png'),
  ];

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: ListView.builder(
        physics: BouncingScrollPhysics(),
        itemBuilder: (context, index) => SongFull(
          song: songs[index],
          index: index + 1,
        ),
        itemCount: songs.length,
      ),
    );
  }
}

class SongFull extends StatelessWidget {
  final SongModel song;
  final int index;

  SongFull({this.song, this.index});
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Container(
      width: size.width,
      margin: const EdgeInsets.only(bottom: 16.0),
      child: Row(
        children: [
          Text('$index.', style: GoogleFonts.montserrat(fontSize: 16.0, fontWeight: FontWeight.bold)),
          SizedBox(width: size.width * 0.01),
          Song(song: song, isSelected: index == 2 ? true : false),
          Spacer(),
          Text('4:03', style: GoogleFonts.montserrat(fontSize: 16.0, fontWeight: FontWeight.bold, color: index == 2 ? Colors.green[200] : Colors.black)),
          SizedBox(width: size.width * 0.02),
          Icon(Icons.more_horiz, size: 28.0),
        ],
      ),
    );
  }
}
