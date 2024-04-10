import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CheckoutScrollView extends StatefulWidget {
  const CheckoutScrollView({super.key});

  @override
  State<CheckoutScrollView> createState() => _CheckoutScrollViewState();
}

class _CheckoutScrollViewState extends State<CheckoutScrollView> {
  bool isNonContactDelivery = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffF6F5F5),
      appBar: AppBar(
        leading: IconButton(
          onPressed: () {},
          icon: Icon(
            Icons.arrow_back_ios,
            size: 15,
            color: Color(0xff2D0C57),
          ),
        ),
        title: Text(
          "Checkout",
          style: GoogleFonts.sora(
              color: Color(0xff2D0C57),
              fontSize: 17,
              fontWeight: FontWeight.w600),
        ),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Column(
          children: [
            Row(
              children: [
                Text(
                  "Payment method",
                  style: GoogleFonts.sora(
                      color: Color(0xff2D0C57),
                      fontSize: 22,
                      fontWeight: FontWeight.bold),
                ),
                Spacer(),
                TextButton(
                  onPressed: () {},
                  child: Text(
                    "CHANGE",
                    style: TextStyle(
                        color: Color(0xff7203FF),
                        fontSize: 15,
                        fontWeight: FontWeight.w600),
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 16,
            ),
            Row(
              children: [
                Image.asset(
                  "images/card.png",
                  height: 25,
                ),
                SizedBox(
                  width: 25,
                ),
                Text(
                  "**** **** **** 4747",
                  style: GoogleFonts.sora(
                      fontSize: 17,
                      fontWeight: FontWeight.w400,
                      color: Color(0xff9586A8)),
                ),
              ],
            ),
            SizedBox(
              height: 30,
            ),
            Row(
              children: [
                Text(
                  "Delivery address",
                  style: GoogleFonts.sora(
                      color: Color(0xff2D0C57),
                      fontSize: 22,
                      fontWeight: FontWeight.bold),
                ),
                Spacer(),
                TextButton(
                  onPressed: () {},
                  child: Text(
                    "CHANGE",
                    style: TextStyle(
                        color: Color(0xff7203FF),
                        fontSize: 15,
                        fontWeight: FontWeight.w600),
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 30,
            ),
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Image.asset(
                  "images/home.png",
                  height: 25,
                ),
                SizedBox(
                  width: 25,
                ),
                Text(
                  " Alexandra Smith\n Cesu 31 k-2 5.st, SIA\n Chili\n Riga\n LV–1012\n Latvia",
                  style: TextStyle(
                      color: Color(0xff9586A8),
                      fontSize: 17,
                      fontWeight: FontWeight.w400),
                ),
              ],
            ),
            SizedBox(
              height: 30,
            ),
            Row(
              children: [
                Text(
                  "Delivery options",
                  style: GoogleFonts.sora(
                      color: Color(0xff2D0C57),
                      fontSize: 22,
                      fontWeight: FontWeight.bold),
                ),
                Spacer(),
                TextButton(
                  onPressed: () {},
                  child: Text(
                    "CHANGE",
                    style: TextStyle(
                        color: Color(0xff7203FF),
                        fontSize: 15,
                        fontWeight: FontWeight.w600),
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 30,
            ),
            Column(
              children: [
                Row(
                  children: [
                    Image.asset(
                      "images/walking.png",
                      height: 25,
                    ),
                    SizedBox(
                      width: 25,
                    ),
                    Text(
                      "I’ll pick it up myself",
                      style: GoogleFonts.sora(
                          color: Color(0xff9586A8),
                          fontSize: 17,
                          fontWeight: FontWeight.w400),
                    )
                  ],
                ),
                SizedBox(
                  height: 24,
                ),
                Row(
                  children: [
                    Image.asset(
                      "images/bike.png",
                      height: 25,
                    ),
                    SizedBox(
                      width: 25,
                    ),
                    Text(
                      "By courier",
                      style: GoogleFonts.sora(
                          color: Color(0xff9586A8),
                          fontSize: 17,
                          fontWeight: FontWeight.w400),
                    )
                  ],
                ),
                SizedBox(
                  height: 24,
                ),
                Row(
                  children: [
                    Image.asset(
                      "images/Drone.png",
                      height: 25,
                    ),
                    SizedBox(
                      width: 25,
                    ),
                    Text(
                      "By Drone",
                      style: GoogleFonts.sora(
                          color: Color(0xff9586A8),
                          fontSize: 17,
                          fontWeight: FontWeight.w400),
                    )
                  ],
                ),
                SizedBox(
                  height: 40,
                ),
                Row(
                  children: [
                    Text(
                      "Non-contact-delivery",
                      style: GoogleFonts.sora(
                          color: Color(0xff2D0C57),
                          fontSize: 22,
                          fontWeight: FontWeight.bold),
                    ),
                    Spacer(),
                    Switch(
                      activeColor: Colors.white,
                      activeTrackColor: Color(0xffE2CBFF),
                      value: isNonContactDelivery,
                      onChanged: (value) {
                        setState(() {
                          isNonContactDelivery = value;
                        });
                      },
                    )
                  ],
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
