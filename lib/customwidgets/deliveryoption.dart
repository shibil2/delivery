import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class DeliveryOptions extends StatefulWidget {
  @override
  _DeliveryOptionsState createState() => _DeliveryOptionsState();
}

class _DeliveryOptionsState extends State<DeliveryOptions> {
  int selectedIndex = -1;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        buildDeliveryOptionRow(
            0, "images/walking.png", "I’ll pick it up myself"),
        SizedBox(
          height: 24,
        ),
        buildDeliveryOptionRow(1, "images/bike.png", "By courier"),
        SizedBox(
          height: 24,
        ),
        buildDeliveryOptionRow(2, "images/Drone.png", "By Drone"),
      ],
    );
  }

  Widget buildDeliveryOptionRow(int index, String imagePath, String text) {
    bool Selected = selectedIndex == index;
    return GestureDetector(
      onTap: () {
        setState(() {
          selectedIndex = index;
        });
      },
      child: Row(
        children: [
          Image.asset(
            imagePath,
            height: 25,
          ),
          SizedBox(
            width: 25,
          ),
          Text(
            text,
            style: GoogleFonts.sora(
              color: Selected ? Color(0xff7203FF) : Color(0xff9586A8),
              fontSize: 17,
              fontWeight: Selected ? FontWeight.w600 : FontWeight.w400,
            ),
          ),
          Spacer(),
          if (selectedIndex == index)
            Icon(
              Icons.check,
              color: Color(0xff7203FF),
            ),
        ],
      ),
    );
  }
}
