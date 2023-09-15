import 'dart:io';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:image_picker/image_picker.dart';

import 'message.dart';

class ClickPicture extends StatefulWidget {
  const ClickPicture({super.key});

  @override
  State<ClickPicture> createState() => _ClickPictureState();
}

class _ClickPictureState extends State<ClickPicture> {
  File? selectedImage;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: SafeArea(
          child: Column(
            children: [
              SizedBox(
                height: 40,
              ),
              Row(
                children: [
                  SizedBox(
                    width: 20,
                  ),
                  GestureDetector(
                      onTap: () {
                        Navigator.pop(context);
                      },
                      child: Image.asset(
                        "assets/images/backbutton.png",
                        scale: 1.5,
                      ))
                ],
              ),
              Stack(
                children: [
                  Row(
                    children: [
                      Image.asset(
                        "assets/images/babyS.png",
                        scale: 2,
                      ),
                    ],
                  ),
                  Column(
                    children: [
                      SizedBox(
                        height: 230,
                      ),
                      Image.asset(
                        "assets/images/whitebackgrund.png",
                        fit: BoxFit.cover,
                      ),
                    ],
                  ),
                  Padding(
                    padding: const EdgeInsets.fromLTRB(40, 310, 40, 0),
                    child: Image.asset(
                      "assets/images/cutlery.png",
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.fromLTRB(40, 280, 40, 0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Image.asset(
                          "assets/images/corners.png",
                          scale: 2,
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.fromLTRB(40, 240, 40, 0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        selectedImage != null
                            ? Padding(
                                padding: const EdgeInsets.fromLTRB(0, 45, 0, 0),
                                child: CircleAvatar(
                                  backgroundColor: HexColor("404040"),
                                  radius: 100,
                                  foregroundImage: FileImage(selectedImage!),
                                ),
                              )
                            : Image.asset(
                                "assets/images/plate.png",
                                scale: 2,
                              ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.fromLTRB(40, 540, 40, 0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          "Click your meal",
                          style: GoogleFonts.andika(
                              fontWeight: FontWeight.w500, fontSize: 24),
                        )
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.fromLTRB(40, 600, 40, 0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        selectedImage != null
                            ? InkWell(
                                onTap: () {
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) => const Message()),
                                  );
                                },
                                child: Image.asset(
                                  "assets/images/checkicon.png",
                                  scale: 1.5,
                                ))
                            : InkWell(
                                onTap: () {
                                  pickImageFromCamera();
                                },
                                child: Image.asset(
                                  "assets/images/cameraicon.png",
                                  scale: 1.5,
                                )),
                      ],
                    ),
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }

  Future pickImageFromCamera() async {
    final returnedImage =
        await ImagePicker().pickImage(source: ImageSource.camera);
    setState(() {
      selectedImage = File(returnedImage!.path);
    });
  }
}
