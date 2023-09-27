import 'package:flutter/material.dart';
import 'package:sadapayclone/constants/colors.dart';
import 'package:sadapayclone/constants/images.dart';
import 'package:sadapayclone/data/transaction_record.dart';
import 'package:sadapayclone/screens/personal/widgets/detailedtransaction.dart';

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
                fontWeight: FontWeight.w400
              ),);
      
      } else {
      return  Text(transaction[index].sendername , style: const TextStyle(
                fontFamily: "Brandon" ,
                fontSize: 16,
                fontWeight: FontWeight.w400
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

  void navigatetonext(int index){
      setState(() {
        Navigator.push(context, MaterialPageRoute(builder: (context) =>  DetailedTransactionPage(detailedtransaction: TransactionPart(transactiondate: transaction[index].transactiondate, senderbankname: transaction[index].senderbankname, sendername: transaction[index].sendername, amount: transaction[index].amount, recievername: transaction[index].recievername, transactiontime: transaction[index].transactiontime, recieverbankname: transaction[index].recieverbankname, sendernumber: transaction[index].sendernumber, recievernumber: transaction[index].recievernumber, refrencenumber: transaction[index].refrencenumber, servicecharges: transaction[index].servicecharges, isRecieved: transaction[index].isRecieved, isSent: transaction[index].isSent)),));
      });
  }
  @override
  Widget build(BuildContext context) {
    _getTransactionPart();
    return Expanded(child: Container(
      decoration: const BoxDecoration(
          borderRadius:  BorderRadius.only(
          topLeft: Radius.circular(30.0), // Adjust the radius as needed
          topRight: Radius.circular(30.0),),
        // color: Colors.grey
      ),
        child: ListView.builder(
          itemCount: transaction.length,
          itemBuilder: (context, index) {
          return GestureDetector(
            onTap: (){
              navigatetonext(index);
            },
            child: ListTile(
                leading: CircleAvatar(
                    radius: 25,
                    backgroundColor: backgroundcolor(index),
                    child: Image.asset(checksentorrecieved(index)),
                ),
                title: recivernameorsender(index),
                 subtitle: Text(transaction[index].transactiontime , style: const TextStyle(
                  fontFamily: "Brandon" ,
                  fontSize: 12,
                  fontWeight: FontWeight.w300
                ),),
                trailing: amountrecivedorsent(index),
            ),
          );
        },),

    ));
  }
}