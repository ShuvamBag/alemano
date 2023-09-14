import 'package:alemano/message.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
class UploadPicture extends StatefulWidget {
  const UploadPicture({super.key});

  @override
  State<UploadPicture> createState() => _UploadPictureState();
}

class _UploadPictureState extends State<UploadPicture> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: SafeArea(
          child: Column(children: [
            SizedBox(height: 40,),
            Row(children: [
              SizedBox(width: 20,),
              GestureDetector(
                  onTap: (){
                    Navigator.pop(context);
                  },
                  child: Image.asset("assets/images/backbutton.png",scale: 1.5,))
            ],),

            Stack(children: [
              Row(children: [
                Image.asset("assets/images/babyS.png",scale: 2,),
              ],),
              Column(children: [
                SizedBox(height: 230,),
                Image.asset("assets/images/whitebackgrund.png",fit: BoxFit.cover,),

              ],),
              Padding(
                padding: const EdgeInsets.fromLTRB(40, 310, 40, 0),
                child: Image.asset("assets/images/cutlery.png",),
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(40, 280, 40, 0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Image.asset("assets/images/corners.png",scale: 2,),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(40, 240, 40, 0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Image.asset("assets/images/plate.png",scale: 2,),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(40, 540, 40, 0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text("Will you eat this?",style: GoogleFonts.andika(fontWeight: FontWeight.w500,fontSize: 24),)
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(40, 600, 40, 0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    InkWell(
                        onTap:(){
                          Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => const Message()),
                          );
                        },
                        child: Image.asset("assets/images/checkicon.png",scale: 1.5,)),
                  ],
                ),
              ),

            ],)
          ],),
        ),
      ),
    );
  }
}
