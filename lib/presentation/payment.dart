import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:credit_card_scanner/credit_card_scanner.dart';
import 'package:delivery/customwidgets/creditcard.dart';
import 'package:delivery/customwidgets/cardfield.dart';

class Payment extends StatefulWidget {
  const Payment({Key? key}) : super(key: key);

  @override
  State<Payment> createState() => _PaymentState();
}

class _PaymentState extends State<Payment> {
  CardDetails? _cardDetails;
  CardScanOptions scanOptions = const CardScanOptions(
    scanCardHolderName: true,
    enableDebugLogs: true,
    validCardsToScanBeforeFinishingScan: 5,
    possibleCardHolderNamePositions: [
      CardHolderNameScanPosition.aboveCardNumber,
    ],
  );

  Future<void> scanCard() async {
    final CardDetails? cardDetails =
        await CardScanner.scanCard(scanOptions: scanOptions);
    if (!mounted || cardDetails == null) return;
    setState(() {
      _cardDetails = cardDetails;
    });
  }

  String formatCardNumber(String cardNumber) {
    String formattedNumber = cardNumber.replaceAll(RegExp(r'\s+\b|\b\s'), '');
    String firstThreeSets = formattedNumber.substring(0, 12);
    return firstThreeSets.replaceAllMapped(
      RegExp(r".{4}"),
      (match) => "${match.group(0)} ",
    );
  }

  String formatLastFourDigits(String cardNumber) {
    return cardNumber.substring(cardNumber.length - 4);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Color(0xffF6F5F5),
        padding: const EdgeInsets.symmetric(
          horizontal: 20,
        ),
        child: ListView(
          physics: BouncingScrollPhysics(),
          children: [
            Align(
              alignment: Alignment.centerLeft,
              child: IconButton(
                onPressed: () {},
                icon: Icon(
                  Icons.arrow_back_ios,
                  color: Color(0xff2D0C57),
                  size: 12,
                ),
              ),
            ),
            SizedBox(height: 25),
            Text(
              "Credit / Debit card",
              style: GoogleFonts.sora(
                color: Color(0xff2D0C57),
                fontSize: 30,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 21),
            CreditCard(
              cardHolderName: _cardDetails?.cardHolderName ?? '',
              cardNumber: _cardDetails != null
                  ? formatCardNumber(_cardDetails!.cardNumber)
                  : '',
              lastcardNumber: _cardDetails != null
                  ? formatLastFourDigits(_cardDetails!.cardNumber)
                  : '',
              expiryDate: _cardDetails?.expiryDate ?? '',
            ),
            SizedBox(height: 24),
            GestureDetector(
              onTap: () {
                scanCard();
              },
              child: Center(
                child: Image(
                  height: 30,
                  image: AssetImage("images/camicon.png"),
                ),
              ),
            ),
            SizedBox(height: 13),
            Text(
              "    Name on card",
              style: TextStyle(
                  fontSize: 14,
                  color: Color(0xff9586A8),
                  fontWeight: FontWeight.w400),
            ),
            CardField(),
            SizedBox(
              height: 23,
            ),
            Text(
              "    Card number",
              style: TextStyle(
                  fontSize: 14,
                  color: Color(0xff9586A8),
                  fontWeight: FontWeight.w400),
            ),
            CardField(),
            SizedBox(
              height: 23,
            ),
            Expanded(
              child: Row(
                children: [
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "    Expiry date",
                          style: TextStyle(
                              fontSize: 14,
                              color: Color(0xff9586A8),
                              fontWeight: FontWeight.w400),
                        ),
                        CardField(),
                      ],
                    ),
                  ),
                  SizedBox(
                    width: 22,
                  ),
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "    CVC",
                          style: TextStyle(
                              fontSize: 14,
                              color: Color(0xff9586A8),
                              fontWeight: FontWeight.w400),
                        ),
                        CardField(),
                      ],
                    ),
                  )
                ],
              ),
            ),
            SizedBox(
              height: 55,
            ),
            MaterialButton(
              color: Color(0xff0ACF83),
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(8)),
              onPressed: () {},
              child: Padding(
                padding: const EdgeInsets.only(top: 19, bottom: 19),
                child: Text(
                  "USE THIS CARD",
                  style: GoogleFonts.sora(
                      fontSize: 15,
                      fontWeight: FontWeight.w600,
                      color: Colors.white),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
