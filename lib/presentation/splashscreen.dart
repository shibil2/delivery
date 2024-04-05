import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          image: DecorationImage(
              image: AssetImage("images/splashbackground.png"))),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          Container(
            height: MediaQuery.of(context).size.height / 1.65,
            color: Color(0xffF6F5F5),
            child: Column(
              children: [
                SizedBox(
                  height: 64,
                ),
                CircleAvatar(
                  backgroundColor: Colors.white,
                  radius: 52,
                  child: Image.asset(
                    "images/Box.png",
                    height: 40,
                  ),
                ),
                SizedBox(
                  height: 24,
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 44, right: 44),
                  child: Align(
                    alignment: Alignment.center,
                    child: Text(
                      "Non-Contact Deliveries",
                      maxLines: 2,
                      style: GoogleFonts.sora(
                          fontSize: 34,
                          fontWeight: FontWeight.bold,
                          decoration: TextDecoration.none,
                          color: Color(0xff2D0C57)),
                    ),
                  ),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
