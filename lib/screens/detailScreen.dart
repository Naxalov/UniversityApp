import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:university_app/university.dart';

class DetailScreen extends StatelessWidget {
  final University uni;
  double boxHeight = 300;
  double boxWidth = 450;

  DetailScreen(University this.uni);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(uni.name),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            Image.asset(
              'assets/images/${uni.acronym}.jpg',
              height: boxHeight,
              width: boxWidth,
              fit: BoxFit.cover,
            ),
            Padding(
              padding: EdgeInsets.all(10),
              child: Text(
                uni.overview,
                textAlign: TextAlign.justify,
                style: TextStyle(fontSize: 15),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 5, horizontal: 25),
              child: Divider(),
            ),
            ListTile(
              leading: Icon(
                Icons.phone,
                size: 20.0,
                color: Colors.teal,
              ),
              title: Text(
                '+82 (20) 880 4447',
                style: GoogleFonts.sourceSansPro(
                  color: Colors.teal[900],
                  letterSpacing: 2.5,
                  fontSize: 20.0,
                ),
              ),
            ),
            ListTile(
              leading: Icon(
                Icons.contact_mail,
                size: 20.0,
                color: Colors.teal,
              ),
              title: Text(
                '+82 (54) 279 2099',
                style: GoogleFonts.sourceSansPro(
                  color: Colors.teal[900],
                  letterSpacing: 2.5,
                  fontSize: 20.0,
                ),
              ),
            ),
            ListTile(
              leading: Icon(
                Icons.add_location,
                size: 20.0,
                color: Colors.teal,
              ),
              title: Text(
                '	98 Gunja-dong, Gwangjin-gu Seoul (population range: over 5,000,000)  143-747 Seoul   Korea',
                style: GoogleFonts.sourceSansPro(
                  color: Colors.teal[900],
                  letterSpacing: 2.5,
                  fontSize: 14.0,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
