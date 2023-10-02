import 'package:flutter/material.dart';
import 'package:sadapayclone/constants/images.dart';

import 'package:sadapayclone/screens/personal/personalscreen.dart';

class SendAmountPage extends StatefulWidget {
  final String number;
  final String name;
  const SendAmountPage({super.key, required this.number, required this.name 
    
  });

  @override
  State<SendAmountPage> createState() => _SendAmountPageState();
}

class _SendAmountPageState extends State<SendAmountPage> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(child: Scaffold(

       appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        leading: IconButton(
          onPressed: () => Navigator.pop(context),
          icon: const Icon(Icons.arrow_back_ios, color: Colors.black),
        ),
        title: const Text(
          "Confirm",
          style: TextStyle(
            fontFamily: "Brandon",
            color: Colors.black,
          ),
        ),
        centerTitle: true,
        actions: [
            IconButton(
          onPressed: () async => await Navigator.push(context, MaterialPageRoute(builder: (context) => const PersonalScreen(),)),
          icon: const Icon(Icons.close, color: Colors.black),
        ),
        ],
      ),
      body: Column(
        children : [ ListTile(
                              leading: CircleAvatar(
                                backgroundColor: Colors.white,
                                child: Image.asset(Myimages.sadapaycolouredlogo),
                              ),
                              title: Text(
                                widget.name,
                                style: const TextStyle(
                                  fontFamily: "Brandon",
                                  fontSize: 16,
                                  fontWeight: FontWeight.w500,
                                  color: Colors.black,
                                ),
                              ),
                              subtitle: Text(
                                widget.number,
                                style: TextStyle(
                                  fontFamily: "Brandon",
                                  fontSize: 16,
                                  fontWeight: FontWeight.w300,
                                  color: Colors.grey[400],
                                ),
                              ),
                              trailing: IconButton(onPressed: (){}, icon: const Icon(Icons.edit)),
                            ),
        ]
        
      ),
    ));
  }
}