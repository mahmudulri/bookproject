import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Trending extends StatelessWidget {
  Trending({super.key});

  var mybookdestails = [
    {
      "imageLink": "assets/images/book1.jpg",
      "bookName": "Modern Science",
    },
    {
      "imageLink": "assets/images/book2.jpg",
      "bookName": "Different Winter",
    },
    {
      "imageLink": "assets/images/book3.jpg",
      "bookName": "Memory",
    },
    {
      "imageLink": "assets/images/book4.jpg",
      "bookName": "Hipocrite World",
    },
    {
      "imageLink": "assets/images/book5.jpg",
      "bookName": "Sin Eater",
    },
    {
      "imageLink": "assets/images/book6.jpg",
      "bookName": "Last Hope",
    },
    {
      "imageLink": "assets/images/book7.jpg",
      "bookName": "Dream Forever",
    },
  ];

  @override
  Widget build(BuildContext context) {
    var screenHeight = MediaQuery.of(context).size.height;
    var screenWidth = MediaQuery.of(context).size.width;
    return SizedBox(
      height: 200,
      width: screenWidth,
      // color: Colors.red,
      child: ListView.separated(
        physics: BouncingScrollPhysics(),
        separatorBuilder: (context, index) {
          return SizedBox(
            width: 10,
          );
        },
        scrollDirection: Axis.horizontal,
        itemCount: mybookdestails.length,
        itemBuilder: (context, index) {
          return Container(
            width: 140,
            decoration: BoxDecoration(
              image: DecorationImage(
                image:
                    AssetImage(mybookdestails[index]["imageLink"].toString()),
                fit: BoxFit.fill,
              ),
              borderRadius: BorderRadius.circular(10),
              color: Color(0xffABDCF2),
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Container(
                  height: 50,
                  width: screenWidth,
                  decoration: BoxDecoration(
                    color: Colors.black.withOpacity(0.5),
                    borderRadius: BorderRadius.circular(5),
                  ),
                  child: Padding(
                    padding: EdgeInsets.symmetric(vertical: 2, horizontal: 2),
                    child: Center(
                      child: Text(
                        mybookdestails[index]["bookName"].toString(),
                        style: GoogleFonts.oswald(
                          fontSize: screenWidth * 0.025,
                          color: Colors.white,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}
