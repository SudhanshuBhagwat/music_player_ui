import 'package:flutter/material.dart';
import 'package:music_app_ui/models/SongModel.dart';
import 'package:music_app_ui/widgets/songs_section/Song.dart';

class HotReleasesSection extends StatelessWidget {

  final List<SongModel> songs = [
    SongModel('2002', 'Anne Marie', image: 'https://i.pinimg.com/736x/c2/59/4e/c2594eb0560b879bdec5fe958b27bd01.jpg'),
    SongModel('So Am I', 'Ava Max', image: 'https://upload.wikimedia.org/wikipedia/en/thumb/7/7e/Ava_Max_-_So_Am_I.png/220px-Ava_Max_-_So_Am_I.png'),
    SongModel('Beautiful', 'Bazzi', image: 'https://i.pinimg.com/originals/06/79/19/0679198dcb628c8610e87761061602ef.png'),
    SongModel('Senorita', 'Shawn Mendes', image: 'https://upload.wikimedia.org/wikipedia/en/thumb/8/8d/Shawn_Mendes_and_Camila_Cabello_-_Se%C3%B1orita.png/220px-Shawn_Mendes_and_Camila_Cabello_-_Se%C3%B1orita.png'),
    SongModel('Death Bed', 'Powfu', image: 'https://upload.wikimedia.org/wikipedia/en/thumb/3/3e/Powfu_-_Death_Bed.png/220px-Powfu_-_Death_Bed.png'),
    SongModel('Say So', 'Doja Cat', image: 'https://upload.wikimedia.org/wikipedia/en/thumb/8/87/Doja_Cat_-_Hot_Pink.png/220px-Doja_Cat_-_Hot_Pink.png'),
    SongModel('Godzilla', 'Eminem', image: 'https://upload.wikimedia.org/wikipedia/en/8/80/Eminem_-_Music_to_Be_Murdered_By.png'),
    SongModel('ROXANNE', 'Arizona Zervas', image: 'https://upload.wikimedia.org/wikipedia/en/3/39/Arizona_Zervas_-_Roxanne.png'),
  ];

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Container(
      width: size.width,
      height: size.height * 0.22,
      child: GridView.count(
        crossAxisCount: 2,
        physics: BouncingScrollPhysics(),
        scrollDirection: Axis.horizontal,
        childAspectRatio: 0.4,
        mainAxisSpacing: 8.0,
        children: List.generate(songs.length, (index) => Song(song: songs[index], isSelected: false)),
      ),
    );
  }
}
