import 'package:flutter/material.dart';
import 'package:sadapayclone/screens/personal/widgets/topcontainer/topcontainers.dart';

import 'package:sadapayclone/screens/personal/widgets/transactionlistwidget.dart';
import 'package:sadapayclone/widgets/BottomNavBar/navbar.dart';

class PersonalScreen extends StatefulWidget {
  const PersonalScreen({super.key});

  @override
  State<PersonalScreen> createState() => _PersonalScreenState();
}

class _PersonalScreenState extends State<PersonalScreen> {
  @override
  Widget build(BuildContext context) {
    return   const SafeArea(
      child: Scaffold(
       
        body: Padding(
          padding: EdgeInsets.all(20),
          child: Column(
            
            children: [
              SizedBox(height: 20,),
              TopContainer(),
               SizedBox(height: 20,),
              TransactionList()
            ],
          ),
        ),
        bottomNavigationBar: NavBar(page: 0),
      ),
    );
  }
}