import 'package:delivery/customwidgets/bottomnavigation.dart';
import 'package:flutter/cupertino.dart';
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
          Align(
            alignment: Alignment.topLeft,
            child: Padding(
              padding: const EdgeInsets.only(left: 20, top: 60),
              child: CircleAvatar(
                backgroundColor: Color(0xffCDFFB6),
                radius: 32,
                child: Image.asset(
                  "images/D.png",
                  height: 25,
                ),
              ),
            ),
          ),
          Spacer(),
          Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(20), topRight: Radius.circular(20)),
              color: Color(0xffF6F5F5),
            ),
            width: double.infinity,
            height: MediaQuery.of(context).size.height / 1.65,
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
                Text(
                  "Non-Contact\nDeliveries",
                  textAlign: TextAlign.center,
                  style: GoogleFonts.sora(
                      fontSize: 34,
                      fontWeight: FontWeight.bold,
                      decoration: TextDecoration.none,
                      color: Color(0xff2D0C57)),
                ),
                SizedBox(
                  height: 25,
                ),
                Text(
                  "When placing an order, select the option\n“Contactless delivery” and the courier will \nleave your order at the door.",
                  textAlign: TextAlign.center,
                  style: GoogleFonts.sora(
                      fontSize: 17,
                      fontWeight: FontWeight.w400,
                      decoration: TextDecoration.none,
                      color: Color(0xff9586A8)),
                ),
                SizedBox(
                  height: 48,
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 20, right: 20),
                  child: MaterialButton(
                    minWidth: double.infinity,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(8)),
                    color: Color(0xff0BCE83),
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const BottomNavigation()),
                      );
                    },
                    child: Padding(
                      padding: const EdgeInsets.only(top: 16, bottom: 16),
                      child: Text(
                        "ORDER NOW",
                        style: GoogleFonts.sora(
                            fontSize: 15,
                            fontWeight: FontWeight.w600,
                            color: Colors.white),
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: 32,
                ),
                TextButton(
                    onPressed: () {},
                    child: Text(
                      "DISMISS",
                      style: GoogleFonts.sora(
                          fontSize: 15,
                          fontWeight: FontWeight.w600,
                          color: Color(0xff9586A8)),
                    )),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
