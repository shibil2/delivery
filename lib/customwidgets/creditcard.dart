import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:google_fonts/google_fonts.dart';

class CreditCard extends StatelessWidget {
  final String cardNumber;
  final String lastcardNumber;
  final String cardHolderName;
  final String expiryDate;
  const CreditCard(
      {super.key,
      required this.cardNumber,
      required this.cardHolderName,
      required this.expiryDate,
      required this.lastcardNumber});

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
              cardNumber,
              style: GoogleFonts.sora(
                  letterSpacing: 2.5,
                  decoration: TextDecoration.none,
                  color: Colors.white,
                  fontSize: 26,
                  fontWeight: FontWeight.w100),
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(top: 105),
          child: Center(
            child: Text(
              lastcardNumber,
              style: GoogleFonts.sora(
                  letterSpacing: 2.5,
                  decoration: TextDecoration.none,
                  color: Colors.white,
                  fontSize: 26,
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
                cardHolderName,
                style: GoogleFonts.sora(
                    decoration: TextDecoration.none,
                    fontSize: 20,
                    fontWeight: FontWeight.w100,
                    letterSpacing: 3,
                    color: Colors.white),
              ),
              Text(
                expiryDate,
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
