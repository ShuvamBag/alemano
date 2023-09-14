import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hexcolor/hexcolor.dart';
class Message extends StatefulWidget {
  const Message({super.key});

  @override
  State<Message> createState() => _MessageState();
}

class _MessageState extends State<Message> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(child:Text("GOOD JOB",style: GoogleFonts.lilitaOne(fontSize: 48,fontWeight: FontWeight.w400,color: HexColor("#3E8B3A"),letterSpacing: 6),),),
    );
  }
}
