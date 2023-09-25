import 'dart:async';

import 'package:flutter/material.dart';
import 'package:sadapayclone/constants/colors.dart';
import 'package:sadapayclone/constants/images.dart';
import 'package:sadapayclone/screens/personal/personalscreen.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
     setState(() {
         Timer(const Duration(seconds: 3),
          ()=>Navigator.pushReplacement(context,
                                        MaterialPageRoute(builder:
                                                          (context) => 
                                                          const PersonalScreen()
                                                         )
                                       )
         );
     });
    super.initState();
 
  }
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: Container(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        color: MyColors.pinkColor,
        child: Padding(
          padding: const EdgeInsets.all(40),
          child: Center(
            
            child: Image.asset(Myimages.sadapaytextwithlogo),
          ),
        ),
      ),
    );
  }
}