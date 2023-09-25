import 'package:flutter/material.dart';
import 'package:sadapayclone/screens/personal/widgets/topContainers.dart';

class PersonalScreen extends StatefulWidget {
  const PersonalScreen({super.key});

  @override
  State<PersonalScreen> createState() => _PersonalScreenState();
}

class _PersonalScreenState extends State<PersonalScreen> {
  @override
  Widget build(BuildContext context) {
    return   SafeArea(
      child: Scaffold(
       
        body: Padding(
          padding: const EdgeInsets.all(20),
          child: Column(
            
            children: [
              const SizedBox(height: 40,),
              const TopContainer(),
              Expanded(child: Container(

              ))
            ],
          ),
        ),
      ),
    );
  }
}