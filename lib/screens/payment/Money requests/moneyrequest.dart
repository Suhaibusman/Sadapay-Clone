import 'package:flutter/material.dart';

class MoneyRequestScreen extends StatefulWidget {
  const MoneyRequestScreen({super.key});

  @override
  State<MoneyRequestScreen> createState() => _MoneyRequestScreenState();
}

class _MoneyRequestScreenState extends State<MoneyRequestScreen> {
  @override
  Widget build(BuildContext context) {
    return  SafeArea(
      child: Scaffold(
        body: Padding(
          padding: const EdgeInsets.all(20),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              const SizedBox(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Icon(Icons.close),
                      ],
                    ) ,
                      Text("Money requests" , style: TextStyle(
                                fontFamily: "Brandon" ,
                                fontSize: 30,
                                // fontWeight: FontWeight.w500,
                                color: Colors.black
                              ),),
                                  SizedBox(height: 200,),
                  ],
                ),
              ),
              Center(
                child: Column(

                  children: [
                    Image.asset("assets/images/zzzimage.png"),
                     const Text("No pending requests" , style: TextStyle(
                                  fontFamily: "Brandon" ,
                                  fontSize: 20,
                                  // fontWeight: FontWeight.w500,
                                  color: Colors.black
                                ),),
                                    const SizedBox(height: 20,),
                          SizedBox(
                            width: MediaQuery.of(context).size.width*0.6,
                            child: Text("Money requests from other Sadapay user will appear here" , style: TextStyle(
                                  fontFamily: "Brandon" ,
                                  fontSize: 16,
                                  // fontWeight: FontWeight.w500,
                                  color: Colors.grey[600]
                                ),textAlign: TextAlign.center,
                                ),
                                  
                          )          
                  ],
                ),
              ),
             
            ],
          ),
        ),
      ),
    );
  }
}