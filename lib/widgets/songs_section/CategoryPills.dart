import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Pill extends StatelessWidget {
  final String name;

  Pill({this.name});
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 26.0, vertical: 6.0),
      decoration: BoxDecoration(
        color: Colors.green[100],
        borderRadius: BorderRadius.all(Radius.circular(20.0)),
      ),
      margin: const EdgeInsets.only(right: 12.0),
      child: Text(name, style: GoogleFonts.montserrat(fontSize: 16.0, color: Colors.green[400], fontWeight: FontWeight.w200)),
    );
  }
}

class CategoryPills extends StatelessWidget {
  final List<String> categories = [
    'Indian',
    'International',
    'Genre',
    'Artist'
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 30.0,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) => Pill(name: categories[index]),
        itemCount: categories.length,
      ),
    );
  }
}
