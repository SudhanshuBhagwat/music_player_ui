import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class TopBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: (context, constrainsts) {
      return Container(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Icon(Icons.menu, size: 34.0),
            Container(
              decoration: BoxDecoration(
                border: Border(
                    bottom: BorderSide(color: Colors.grey.shade400, width: 1)),
              ),
              child: Row(
                children: [
                  Icon(Icons.search, size: 26.0, color: Colors.grey.shade400),
                  SizedBox(width: constrainsts.maxWidth * 0.03),
                  Container(
                    width: constrainsts.maxWidth * 0.6,
                    child: TextField(
                      textAlign: TextAlign.center,
                      decoration: InputDecoration(
                        border: InputBorder.none,
                        hintText: 'Search song, album or artist',
                        hintStyle:
                            GoogleFonts.montserrat(color: Colors.grey.shade400),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            ClipRRect(
              borderRadius: BorderRadius.circular(200.0),
              child: Container(
                width: constrainsts.maxWidth * 0.06,
                height: constrainsts.maxWidth * 0.06,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.all(
                    Radius.circular(constrainsts.maxWidth * 0.1),
                  ),
                  image: DecorationImage(
                      image: NetworkImage(
                          'https://encrypted-tbn0.gstatic.com/images?q=tbn%3AANd9GcRc70mMJhZVyyaFTF22bBIR2ntwTBpxr-ojLg&usqp=CAU'),
                      fit: BoxFit.cover),
                ),
              ),
            ),
          ],
        ),
      );
    });
  }
}
