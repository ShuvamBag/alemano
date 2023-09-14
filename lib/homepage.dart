import 'package:alemano/click_picture.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hexcolor/hexcolor.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          children: [
            SizedBox(
              height: 700,
            ),
            InkWell(
              enableFeedback: true,
              focusColor: Colors.green,
              onTap: (){
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const ClickPicture()),
                );
              },
              child: Material(
                elevation: 15,
                borderRadius: BorderRadius.all(Radius.circular(50)),
                child: Container(
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(50),
                      color: HexColor("#3E8B3A")),
                  child: Padding(
                    padding: const EdgeInsets.fromLTRB(25.0, 12.0, 25.0, 12.0),
                    child: Text(
                      "Share your meal",
                      style: GoogleFonts.andika(
                          fontSize: 27,
                          fontWeight: FontWeight.w500,
                          color: Colors.white),
                    ),
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
