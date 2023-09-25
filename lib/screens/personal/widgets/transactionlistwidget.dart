import 'package:flutter/material.dart';
import 'package:sadapayclone/constants/colors.dart';
import 'package:sadapayclone/constants/images.dart';
import 'package:sadapayclone/data/transaction_record.dart';

class TransactionList extends StatefulWidget {
  const TransactionList({super.key});

  @override
  State<TransactionList> createState() => _TransactionListState();
}



class _TransactionListState extends State<TransactionList> {
    List<TransactionPart> transaction = [];
  void _getTransactionPart() {
    setState(() {
      transaction = TransactionPart.getTransactionPart();
    });
  }

   checksentorrecieved(int index){

      if (transaction[index].isSent == true && transaction[index].isRecieved ==false ) {
      return Myimages.sendicon;
      
      } else {
      return   Myimages.recieveicon;
      }
  }
  
   backgroundcolor(int index){

      if (transaction[index].isSent == true && transaction[index].isRecieved ==false ) {
      return MyColors.pinkColor.withOpacity(0.2);
      
      } else {
      return MyColors.greenColor.withOpacity(0.2);
      }
  }
    recivernameorsender(int index){

      if (transaction[index].isSent == true && transaction[index].isRecieved ==false ) {
      return  Text(transaction[index].recievername , style: const TextStyle(
                fontFamily: "Brandon" ,
                fontSize: 16,
                fontWeight: FontWeight.bold
              ),);
      
      } else {
      return  Text(transaction[index].sendername , style: const TextStyle(
                fontFamily: "Brandon" ,
                fontSize: 16,
                fontWeight: FontWeight.bold
              ),);
      }
  }
    amountrecivedorsent(int index){

      if (transaction[index].isSent == true && transaction[index].isRecieved ==false ) {
      return Text("- Rs. ${transaction[index].amount.toString()}", style: const TextStyle(
                fontFamily: "Brandon" ,
                fontSize: 16,
                fontWeight: FontWeight.normal
              ),);
      
      } else {
      return   Text("+ Rs. ${transaction[index].amount.toString()}", style: const TextStyle(
                fontFamily: "Brandon" ,
                fontSize: 16,
                fontWeight: FontWeight.normal,
                color: MyColors.greenColor

              ),);
      }
  } 
  @override
  Widget build(BuildContext context) {
    _getTransactionPart();
    return Expanded(child: Container(
      decoration: const BoxDecoration(
        color: Colors.grey
      ),
        child: ListView.builder(
          itemCount: transaction.length,
          itemBuilder: (context, index) {
          return ListTile(
              leading: CircleAvatar(
                  radius: 25,
                  backgroundColor: backgroundcolor(index),
                  child: Image.asset(checksentorrecieved(index)),
              ),
              title: recivernameorsender(index),
               subtitle: Text(transaction[index].transactiontime , style: const TextStyle(
                fontFamily: "Brandon" ,
                fontSize: 12,
                fontWeight: FontWeight.w200
              ),),
              trailing: amountrecivedorsent(index),
          );
        },),

    ));
  }
}