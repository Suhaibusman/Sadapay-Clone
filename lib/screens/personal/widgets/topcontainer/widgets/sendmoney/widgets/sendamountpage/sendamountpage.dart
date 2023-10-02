import 'package:flutter/material.dart';
import 'package:sadapayclone/constants/colors.dart';
import 'package:sadapayclone/constants/images.dart';

import 'package:sadapayclone/screens/personal/personalscreen.dart';
import 'package:sadapayclone/screens/personal/widgets/topcontainer/widgets/sendmoney/sendmoney.dart';

class SendAmountPage extends StatefulWidget {
  final String number;
  final String name;
  final int amount;
  const SendAmountPage(
      {super.key,
      required this.number,
      required this.name,
      required this.amount});

  @override
  State<SendAmountPage> createState() => _SendAmountPageState();
}

class _SendAmountPageState extends State<SendAmountPage> {
  int serviceCharges =0;
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
          resizeToAvoidBottomInset: false,
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
            onPressed: () => Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => const PersonalScreen(),
                )),
            icon: const Icon(Icons.close, color: Colors.black),
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(children: [
          Container(
            height: 70,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              color: Colors.white,
            ),
            child: Center(
              child: ListTile(
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
                trailing: IconButton(
                    onPressed: () {
                      Navigator.pop(context);
                    },
                    icon: const Icon(Icons.edit)),
              ),
            ),
          ),
          SizedBox(height: 30,),
          Container(
            height: MediaQuery.of(context).size.height * 0.4,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              color: Colors.white,
            ),
            child: Padding(
              padding: const EdgeInsets.all(20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Recipient will get",
                            style: TextStyle(
                              fontFamily: "Brandon",
                              fontSize: 17,
                              fontWeight: FontWeight.w300,
                              color: Colors.grey[400],
                            ),
                          ),
                          Text(
                            "Rs. ${widget.amount}",
                            style: const TextStyle(
                              fontFamily: "Brandon",
                              fontSize: 20,
                              fontWeight: FontWeight.w500,
                              color: Colors.black,
                            ),
                          ),
                       
                        ],
                      ),
                      IconButton(
                          onPressed: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => const SendMoney(),
                                ));
                          },
                          icon: const Icon(Icons.edit)),
                    ],
                  ),
                    const Divider(
                        color: Colors.grey,
                         ),
                   Text(
                            "Sender fee",
                            style: TextStyle(
                              fontFamily: "Brandon",
                              fontSize: 17,
                              fontWeight: FontWeight.w300,
                              color: Colors.grey[400],
                            ),
                          ),
                          Text(
                            "Rs. $serviceCharges 🎉",
                            style: const TextStyle(
                              fontFamily: "Brandon",
                              fontSize: 20,
                              fontWeight: FontWeight.w500,
                              color: MyColors.greenColor,
                            ),
                          ),
                          const Divider(
                          color: Colors.grey,
                         ),
                          Text(
                            "Add a note",
                            style: TextStyle(
                              fontFamily: "Brandon",
                              fontSize: 17,
                              fontWeight: FontWeight.w300,
                              color: Colors.grey[400],
                            ),
                          ),
                          const TextField(
                            decoration: InputDecoration(
                            ),
                          )
                ],
              ),
            ),
          )
        ]),
      ),
    ));
  }
}
