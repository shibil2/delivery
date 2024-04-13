import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:google_fonts/google_fonts.dart';

class CreditCard extends StatelessWidget {
  const CreditCard({super.key});

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(8),
      child: Stack(children: [
        Image.asset(
          "images/scard.png",
        ),
        Padding(
          padding: const EdgeInsets.only(top: 30, right: 30),
          child: Align(
            alignment: Alignment.topRight,
            child: Image.asset(
              "images/mc.png",
              height: 40,
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(top: 80),
          child: Center(
            child: Text(
              "4747  4747  4747  \n          4747",
              style: GoogleFonts.sora(
                  letterSpacing: 2,
                  decoration: TextDecoration.none,
                  color: Colors.white,
                  fontSize: 20,
                  fontWeight: FontWeight.w100),
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(top: 180),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Text(
                "ALEXANDRA SMITH",
                style: GoogleFonts.sora(
                    decoration: TextDecoration.none,
                    fontSize: 20,
                    fontWeight: FontWeight.w100,
                    letterSpacing: 3,
                    color: Colors.white),
              ),
              Text(
                "07/21",
                style: GoogleFonts.sora(
                    decoration: TextDecoration.none,
                    fontSize: 20,
                    fontWeight: FontWeight.w100,
                    letterSpacing: .25,
                    color: Colors.white),
              ),
            ],
          ),
        )
      ]),
    );
  }
}
