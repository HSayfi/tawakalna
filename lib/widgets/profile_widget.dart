import 'package:flutter/material.dart';

class ProfileWidget extends StatelessWidget {
  static final FULL_NAME = "حسن حامد علي صيفي";
  static final ID_NO = "١٠٨٦٥٢٩١٦٩";

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 180,
      width: 310,
      child: Stack(
        children: [
          Opacity(
            opacity: 0.15,
            // opacity: 0.50,
            child: Image.asset(
              'assets/images/profile_bg2.png',
              fit: BoxFit.cover,
              height: 180,
              width: 310,
            ),
          ),
          Align(
            alignment: Alignment.topCenter,
            child: CircleAvatar(
              backgroundColor: Color(0xFF5E9A92),
              radius: 36,
              child: CircleAvatar(
                backgroundImage: AssetImage('assets/images/profile_image.jpeg'),
                radius: 32.0,
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(0, 60, 0, 0),
            child: Center(
              child: Text(
                "$FULL_NAME \n\n $ID_NO",
                textAlign: TextAlign.center,
                style: TextStyle(
                    color: Color(0xFF458F88), fontWeight: FontWeight.w700),
              ),
            ),
          ),
          Align(
            alignment: Alignment.bottomRight,
            child: Image.asset(
              'assets/images/Tawakalna_logo.png',
              fit: BoxFit.cover,
              height: 20,
            ),
          ),
          Align(
            alignment: Alignment.bottomLeft,
            child: Container(
              width: 90,
              height: 25,
              decoration: BoxDecoration(
                shape: BoxShape.rectangle,
                color: Colors.red,
                borderRadius: BorderRadius.horizontal(right: Radius.circular(8)),
                gradient: LinearGradient(
                  begin: Alignment.bottomRight,
                  end: Alignment.bottomLeft,
                  colors: [
                    Colors.green[800]!,
                    Colors.green[900]!,
                    Color.fromARGB(255, 5, 83, 30),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
