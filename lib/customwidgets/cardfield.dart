import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CardField extends StatelessWidget {
  const CardField({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return TextField(
      showCursor: false,
      decoration: InputDecoration(
        contentPadding: EdgeInsets.all(0),
        filled: true,
        fillColor: Colors.white,
        enabledBorder: OutlineInputBorder(
          borderSide: BorderSide(color: Color(0xffD9D0E3), width: 1),
          borderRadius: BorderRadius.circular(8),
        ),
        focusedBorder: OutlineInputBorder(
          borderSide: BorderSide(
            color: Color(0xffD9D0E3),
            width: 1,
          ),
          borderRadius: BorderRadius.circular(8),
        ),
      ),
    );
  }
}
