import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';

class SearchBarButton extends StatelessWidget {
  const SearchBarButton({super.key});

  @override
  Widget build(BuildContext context) {
    return TextField(
      inputFormatters: [
        FilteringTextInputFormatter.allow(RegExp(r'[a-zA-Z]')),
      ],
      cursorColor: Colors.black,
      decoration: InputDecoration(
        contentPadding: EdgeInsets.all(0),
        prefixIcon: Image.asset(
          "images/search.png",
        ),
        hintText: "Search",
        hintStyle: GoogleFonts.sora(
            color: Color(0xff9586A8),
            fontSize: 17,
            fontWeight: FontWeight.w400),
        filled: true,
        fillColor: Colors.white,
        enabledBorder: OutlineInputBorder(
          borderSide: BorderSide(
            color: Color(0xffD9D0E3),
            width: 1,
          ),
          borderRadius: BorderRadius.circular(27),
        ),
        focusedBorder: OutlineInputBorder(
          borderSide: BorderSide(
            color: Color(0xffD9D0E3),
            width: 1,
          ),
          borderRadius: BorderRadius.circular(27),
        ),
      ),
    );
  }
}
