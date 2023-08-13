import 'package:book_project/book_details.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:lottie/lottie.dart';

class Dashboard extends StatelessWidget {
  Dashboard({super.key});

  List<String> bookCategories = [
    "Mystery",
    "Romance",
    "Historical Fiction",
    "Young Adult",
    "Biography & Memoir",
    "Science & Nature",
    "Philosophy & Ethics",
    "Poetry",
    "Travel & Adventure",
    "Cookbooks & Culinary",
    "Art & Photography",
    "Business & Economics",
    "Health & Wellness",
    "Parenting & Family",
    "Religion & Spirituality",
    "Humor & Comedy",
    "True Crime",
    "Children's Books",
    "Reference & Encyclopedias",
    "Horror",
    "Classic Literature",
  ];

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
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.white,
          leading: IconButton(
              onPressed: () {},
              icon: Icon(
                Icons.sort,
                size: screenWidth * 0.070,
                color: Colors.black,
              )),
          title: Text(
            "Dashboard",
            style: GoogleFonts.oswald(
              fontSize: screenWidth * 0.055,
              color: Colors.black,
            ),
          ),
        ),
        drawer: Drawer(),
        backgroundColor: Colors.white,
        body: Padding(
          padding: EdgeInsets.symmetric(horizontal: 20, vertical: 5),
          child: ListView(
            children: [
              Container(
                height: 50,
                width: screenWidth,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  border: Border.all(
                    color: Colors.grey,
                    width: 1,
                  ),
                ),
                child: Padding(
                  padding: EdgeInsets.symmetric(horizontal: 20),
                  child: TextField(
                    decoration: InputDecoration(
                      border: InputBorder.none,
                      hintText: "Search Your Book....",
                    ),
                  ),
                ),
              ),

              //...................Popular...........................pupular...../
              SizedBox(
                width: screenWidth,
                child: Padding(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
                  child: Row(
                    children: [
                      Center(
                        child: Text(
                          "Popular",
                          style: GoogleFonts.oswald(
                            fontSize: screenWidth * 0.040,
                            color: Colors.black,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                      ),
                      Spacer(),
                      Padding(
                        padding: EdgeInsets.symmetric(
                          vertical: 5,
                        ),
                        child: Center(
                          child: Row(
                            children: [
                              Text(
                                "View All",
                                style: GoogleFonts.oswald(
                                  fontSize: screenWidth * 0.040,
                                  color: Colors.black,
                                  fontWeight: FontWeight.w500,
                                ),
                              ),
                              Icon(Icons.arrow_forward),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),

              SizedBox(
                height: 200,
                width: screenWidth,
                // color: Colors.red,
                child: ListView.separated(
                  shrinkWrap: true,
                  physics: BouncingScrollPhysics(),
                  separatorBuilder: (context, index) {
                    return SizedBox(
                      width: 10,
                    );
                  },
                  scrollDirection: Axis.horizontal,
                  itemCount: mybookdestails.length,
                  itemBuilder: (context, index) {
                    return InkWell(
                      onTap: () {
                        Get.to(() => BookDetails());
                      },
                      child: Container(
                        width: 140,
                        decoration: BoxDecoration(
                          image: DecorationImage(
                            image: AssetImage(
                                mybookdestails[index]["imageLink"].toString()),
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
                                padding: EdgeInsets.symmetric(
                                    vertical: 2, horizontal: 2),
                                child: Center(
                                  child: Text(
                                    mybookdestails[index]["bookName"]
                                        .toString(),
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
                      ),
                    );
                  },
                ),
              ),

              //...................Trending...........................Trending...../

              SizedBox(
                width: screenWidth,
                child: Padding(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
                  child: Row(
                    children: [
                      Center(
                        child: Text(
                          "Trending",
                          style: GoogleFonts.oswald(
                            fontSize: screenWidth * 0.040,
                            color: Colors.black,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                      ),
                      Spacer(),
                      Padding(
                        padding: EdgeInsets.symmetric(
                          horizontal: 10,
                          vertical: 5,
                        ),
                        child: Center(
                          child: Row(
                            children: [
                              Text(
                                "View All",
                                style: GoogleFonts.oswald(
                                  fontSize: screenWidth * 0.040,
                                  color: Colors.black,
                                  fontWeight: FontWeight.w500,
                                ),
                              ),
                              Icon(Icons.arrow_forward),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(
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
                          image: AssetImage(
                              mybookdestails[index]["imageLink"].toString()),
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
                              padding: EdgeInsets.symmetric(
                                  vertical: 2, horizontal: 2),
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
              ),
              SizedBox(
                height: 5,
              ),
              Row(
                children: [
                  Text("View by Categories"),
                  Expanded(
                    child: Container(
                      height: 1,
                      color: Colors.black.withOpacity(0.5),
                    ),
                  ),
                ],
              ),
              Container(
                height: 60,
                width: screenWidth,
                // color: Colors.red,
                child: ListView.separated(
                  separatorBuilder: (context, index) {
                    return SizedBox(
                      width: 10,
                    );
                  },
                  scrollDirection: Axis.horizontal,
                  itemCount: bookCategories.length,
                  itemBuilder: (context, index) {
                    return Center(
                      child: Container(
                        decoration: BoxDecoration(
                          color: Colors.black,
                          borderRadius: BorderRadius.circular(5),
                        ),
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Text(
                            bookCategories[index],
                            style: GoogleFonts.jost(
                              color: Colors.white,
                              fontSize: 20,
                            ),
                          ),
                        ),
                      ),
                    );
                  },
                ),
              ),
              SizedBox(
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
                          image: AssetImage(
                              mybookdestails[index]["imageLink"].toString()),
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
                              padding: EdgeInsets.symmetric(
                                  vertical: 2, horizontal: 2),
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
              ),
            ],
          ),
        ));
  }
}
