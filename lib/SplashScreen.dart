// ignore_for_file: file_names

import 'package:cafe_craze/HomePage.dart';
import 'package:cafe_craze/MyText.dart';
import 'package:flutter/material.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Center(
              child: Image.asset("assets/icons/splash_icon.png", width: 250),
            ),
            SizedBox(height: 30),

            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 25.0),
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  padding: EdgeInsets.symmetric(vertical: 8),
                  backgroundColor: Colors.white,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(12),
                  ),
                ),

                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => HomePage()),
                  );
                },

                child: Center(
                  child: MyText(
                    text: "Coffee Shop",
                    fWeight: FontWeight.bold,
                    size: 35,
                    color: Colors.black,
                  ),
                ),
              ),
            ),
            SizedBox(height: 20),
            MyText(
              text: "We Have The Best Taste,\nNot Even the Asia but World!",
            ),
          ],
        ),
      ),
    );
  }
}
