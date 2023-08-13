import 'package:book_project/dashboard.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:lottie/lottie.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    Future.delayed(Duration(seconds: 5), () => Get.to(() => Dashboard()));
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    var screenHeight = MediaQuery.of(context).size.height;
    var screenWidth = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: Color(0xff130B20),
      body: Container(
        height: screenHeight,
        width: screenWidth,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Expanded(
                flex: 3,
                child: Container(
                    // color: Colors.yellow,
                    child: Column(
                  children: [
                    Spacer(),
                    Lottie.asset('assets/loties/book2.json'),
                    SizedBox(
                      height: 50,
                    ),
                  ],
                ))),
            Expanded(
              flex: 2,
              child: Container(
                // color: Colors.green,
                child: Text(
                  "App Name",
                  style: GoogleFonts.oswald(
                    fontSize: screenWidth * 0.10,
                    color: Colors.white,
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
