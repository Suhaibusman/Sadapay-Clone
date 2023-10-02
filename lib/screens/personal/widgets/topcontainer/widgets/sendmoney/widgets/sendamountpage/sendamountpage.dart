import 'package:flutter/material.dart';
import 'package:sadapayclone/constants/colors.dart';
import 'package:sadapayclone/constants/images.dart';
import 'package:sadapayclone/data/amount.dart';
import 'package:sadapayclone/data/transaction_record.dart';

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
      String _getCurrentDate() {
    // Get the current date and time
    DateTime now = DateTime.now();

    // Format the date and time as a string
    String todayDate = "${now.day} ${now.month} ${now.year}";

    return todayDate;
  }
   String _getCurrentTime() {
    // Get the current date and time
    DateTime now = DateTime.now();

    // Format the date and time as a string
   String todayCurrentTime = "${now.hour}:${now.minute}";
    return todayCurrentTime;
  }  
     DateTime now = DateTime.now();

 
      int serviceCharges =0;
   List<TransactionPart> transactions = TransactionPart.getTransactionPart();

  void addtoTransactionlist(List<TransactionPart> transactionList) {
    setState(() {
      transactionList.add(TransactionPart(
        transactiondate: _getCurrentDate(),
        senderbankname: "SadaPay",
        sendername: "Muhammad Suhaib",
        amount: widget.amount,
        recievername: widget.name,
        transactiontime: _getCurrentTime(),
        recieverbankname: "Sadapay",
        sendernumber: "03112136120",
        recievernumber: widget.number,
        refrencenumber: 920065 + 12,
        servicecharges: serviceCharges,
        isRecieved: false,
        isSent: true,
      ));
      accountBalance -= widget.amount;
      Navigator.push(context, MaterialPageRoute(builder: (context) => const PersonalScreen(),));
    });
  }
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
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
             SizedBox(
                child: Column(
                  children: [
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
          const SizedBox(height: 30,),
          Container(
            height: MediaQuery.of(context).size.height * 0.4,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              color: Colors.white,
            ),
            child: Padding(
              padding: const EdgeInsets.all(20),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
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
          ),
                  ],
                ),
             ),
          InkWell(
            onTap: (){
                addtoTransactionlist(transactions);
            },
            child: Container(
                            width: MediaQuery.of(context).size.width,
                          decoration: BoxDecoration(
                            color: MyColors.pinkColor,
                            borderRadius: BorderRadius.circular(20),
                          ),
                          child:  Padding(
                            padding: const EdgeInsets.all(20),
                            child: Center(
                              child: Text("Send Rs. ${widget.amount}" ,  style: const TextStyle(
                              fontFamily: "Brandon",
                              fontSize: 20,
                              color: Colors.white,
                              ),),
                            ),
                          ),
                        ),
          ),

        ]),
      ),
    ));
  }
}
