import 'package:flutter/material.dart';

class BalanceScreen extends StatefulWidget {
  const BalanceScreen({super.key});

  @override
  State<BalanceScreen> createState() => _BalanceScreenState();
}

class _BalanceScreenState extends State<BalanceScreen> {
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