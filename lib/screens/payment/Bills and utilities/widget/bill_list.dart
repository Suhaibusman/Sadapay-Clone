import 'package:flutter/material.dart';

class BillList extends StatefulWidget {
  const BillList({super.key});

  @override
  State<BillList> createState() => _BillScreenState();
}

class _BillScreenState extends State<BillList> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(onPressed:()=> Navigator.pop(context), icon: const Icon(Icons.arrow_back_ios)),
        title: const Text("Mobile top up" , style: TextStyle(
                      fontFamily: "Brandon" ,
                    
                      // fontWeight: FontWeight.w500,
                      color: Colors.black
                    ),),
                    centerTitle: true,
      ),
    );
  }
}