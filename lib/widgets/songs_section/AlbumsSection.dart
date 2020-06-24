import 'package:flutter/material.dart';

class AlbumsSection extends StatelessWidget {
  final List<String> albums = [
    'https://images.complex.com/complex/images/c_fill,dpr_auto,f_auto,q_90,w_1400/fl_lossy,pg_1/wcezwyletkdqsrvourix/j-balvin-colores-stream',
    'https://hips.hearstapps.com/hmg-prod.s3.amazonaws.com/images/chromatica-1586184301.jpeg',
    'https://m.media-amazon.com/images/I/71um73oIdoL._SS500_.jpg',
    'https://upload.wikimedia.org/wikipedia/en/6/65/Kacey_Musgraves_-_Golden_Hour.png',
    'https://nowthisiswhatiwouldcallmusic.files.wordpress.com/2020/05/ifvsg3w4ehq41-e1589961988276.png?w=1440',
    'https://upload.wikimedia.org/wikipedia/en/c/c2/DaBaby_-_Blame_It_on_Baby.png',
    'https://direct.rhapsody.com/imageserver/images/alb.466580699/600x600.jpg',
  ];

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Container(
      width: size.width,
      height: size.height * 0.1,
      child: ListView.separated(
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) {
          return ClipRRect(
            borderRadius: BorderRadius.circular(200.0),
            child: Container(
              height: size.width * 0.05,
              width: size.width * 0.05,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: NetworkImage(albums[index]),
                ),
              ),
            ),
          );
        },
        separatorBuilder: (context, index) =>
            SizedBox(width: size.width * 0.02),
        itemCount: albums.length,
      ),
    );
  }
}
