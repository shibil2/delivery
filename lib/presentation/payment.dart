import 'package:delivery/customwidgets/creditcard.dart';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:google_fonts/google_fonts.dart';

class Payment extends StatefulWidget {
  const Payment({super.key});

  @override
  State<Payment> createState() => _PaymentState();
}

class _PaymentState extends State<Payment> {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Color(0xffF6F5F5),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 65),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            IconButton(
                onPressed: () {},
                icon: Icon(
                  Icons.arrow_back_ios,
                  color: Color(0xff2D0C57),
                  size: 12,
                )),
            SizedBox(
              height: 25,
            ),
            Text(
              "Credit / Debit card",
              style: GoogleFonts.sora(
                  color: Color(0xff2D0C57),
                  fontSize: 30,
                  fontWeight: FontWeight.bold,
                  decoration: TextDecoration.none),
            ),
            SizedBox(
              height: 21,
            ),
            CreditCard(),
            SizedBox(
              height: 24,
            ),
            GestureDetector(
              onTap: () {},
              child: Center(
                child: Image(
                  height: 30,
                  image: AssetImage(
                    "images/camicon.png",
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
