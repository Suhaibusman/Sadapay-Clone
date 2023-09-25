import 'package:flutter/material.dart';
import 'package:sadapayclone/constants/colors.dart';
import 'package:sadapayclone/constants/images.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: Container(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        color: MyColors.pinkColor,
        child: Center(
          child: Image.asset(Myimages.sadapaycolouredlogo),
        ),
      ),
    );
  }
}