import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CategoryGridList extends StatelessWidget {
  CategoryGridList({Key? key}) : super(key: key);
  final List<String> categoryimages = [
    "images/veg.png",
    "images/fruit.png",
    "images/bread.png",
    "images/sweet.png",
    "images/pasta.png",
    "images/drinks.png",
  ];
  final List<String> categorynames = [
    "Vegetables",
    "Fruits",
    "Bread",
    "Sweets",
    "Pasta",
    "Drinks",
  ];
  final List<String> categorycount = [
    "(43)",
    "(32)",
    "(22)",
    "(56)",
    "(43)",
    "(52)",
  ];

  final List<String> items = List.generate(6, (index) => "Item $index");

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      physics: NeverScrollableScrollPhysics(),
      child: GridView.builder(
        shrinkWrap: true,
        gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
          mainAxisExtent: 210,
          maxCrossAxisExtent: 177,
          crossAxisSpacing: 20,
          mainAxisSpacing: 20,
        ),
        itemCount: items.length,
        itemBuilder: (BuildContext context, int index) {
          return InkWell(
            onTap: () {},
            child: Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(8),
                color: Colors.white,
              ),
              child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Image.asset(
                      categoryimages[index],
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 16),
                      child: Text(
                        categorynames[index],
                        style: GoogleFonts.sora(
                            color: Color(0xff2D0C57),
                            fontSize: 18,
                            fontWeight: FontWeight.bold),
                      ),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 16),
                      child: Text(
                        categorycount[index],
                        style: GoogleFonts.sora(
                            color: Color(0xff9586A8),
                            fontSize: 12,
                            fontWeight: FontWeight.w400),
                      ),
                    ),
                  ]),
            ),
          );
        },
      ),
    );
  }
}
