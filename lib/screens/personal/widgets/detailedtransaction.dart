
import 'package:flutter/material.dart';
import 'package:sadapayclone/constants/colors.dart';
import 'package:sadapayclone/constants/images.dart';
import 'package:sadapayclone/data/transaction_record.dart';

class DetailedTransactionPage extends StatefulWidget {
  const DetailedTransactionPage({super.key, required this.detailedtransaction});
  final TransactionPart detailedtransaction; 
  @override
  State<DetailedTransactionPage> createState() => _DetailedTransactionPageState();
}

class _DetailedTransactionPageState extends State<DetailedTransactionPage> {

     backgroundcolor(){

      if (widget.detailedtransaction.isSent == true && widget.detailedtransaction.isRecieved ==false ) {
      return MyColors.pinkColor;
      
      } else {
      return MyColors.greenColor;
      }
  }
     moneyreciveorsend(){

      if (widget.detailedtransaction.isSent == true && widget.detailedtransaction.isRecieved ==false ) {
      return  const Center(
        child: Text("Money Sent" , style: TextStyle(
                  fontFamily: "Brandon" ,
                  fontSize: 16,
                  fontWeight: FontWeight.bold
                ),),
      );
      
      } else {
      return  const Center(
        child: Text("Money Recieved", style: TextStyle(
                  fontFamily: "Brandon" ,
                  fontSize: 16,
                  fontWeight: FontWeight.bold
                ),),
      );
      }
  }
  
   checksentorrecieved(){

    
      if (widget.detailedtransaction.isSent == true && widget.detailedtransaction.isRecieved ==false ) {
      return 
     Center(
        child: ClipRRect(
          borderRadius: BorderRadius.circular(10),
          child: Container(
            color: Colors.white,
            child: Image.asset(Myimages.sendicon,height: 100,width: 100,))),
      );
      
      
      } else {
      return   Center(
        child: ClipRRect(
          borderRadius: BorderRadius.circular(20),
          child: Container(
            color: Colors.white,
            child: Image.asset(Myimages.recieveicon ,height: 100,width: 100,))),
      );
      }
  }

  amountrecivedorsent(){

    if (widget.detailedtransaction.isSent == true && widget.detailedtransaction.isRecieved ==false ) {
      return Text("Rs. ${widget.detailedtransaction.amount.toString()}", style: const TextStyle(
                fontFamily: "Brandon" ,
                fontSize: 35,
                fontWeight: FontWeight.bold,
                color: Colors.white
              ),);
      
      } else {
      return   Text("+ Rs. ${widget.detailedtransaction.amount.toString()}", style: const TextStyle(
                fontFamily: "Brandon" ,
                fontSize: 35,
                fontWeight: FontWeight.bold,
                color: Colors.white

              ),);
      }
  } 
  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body: Column(
        children: [
          Container(
            
            height: MediaQuery.of(context).size.height*0.47,
            width: MediaQuery.of(context).size.width,
            decoration:  BoxDecoration(
              color: backgroundcolor(),
                borderRadius: const BorderRadius.only(
          bottomLeft: Radius.circular(30.0), // Adjust the radius as needed
          bottomRight: Radius.circular(30.0), // Adjust the radius as needed
    ),
            ),

            child: Padding(
              padding: const EdgeInsets.all(20),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children:[Row(children: [
                  const SizedBox(height: 40,),
                  IconButton(onPressed:()=> Navigator.pop(context), icon: const Icon(Icons.arrow_back_ios)),
                  moneyreciveorsend(),
            
                ],),
                const SizedBox(height: 40,),
                checksentorrecieved(),
                const SizedBox(height: 40,),
                amountrecivedorsent(),
                
                
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [const Text("From " , style: TextStyle(
                      fontFamily: "Brandon" ,
                      fontSize: 18,
                      fontWeight: FontWeight.normal,
                      color: Colors.white
            
                    ),),Text(widget.detailedtransaction.sendername , style: const TextStyle(
                      fontFamily: "Brandon" ,
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                      color: Colors.white
            
                    ),) ],),
                    Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [const Text("To " , style: TextStyle(
                      fontFamily: "Brandon" ,
                      fontSize: 18,
                      fontWeight: FontWeight.normal,
                      color: Colors.white
            
                    ),),Text(widget.detailedtransaction.recievername , style: const TextStyle(
                      fontFamily: "Brandon" ,
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                      color: Colors.white
            
                    ),) ],),
                    const SizedBox(height: 10,),
                    Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [ Text("${widget.detailedtransaction.transactiondate}, " , style: const TextStyle(
                      fontFamily: "Brandon" ,
                      fontSize: 18,
                      fontWeight: FontWeight.normal,
                      color: Colors.white
            
                    ),),Text(widget.detailedtransaction.transactiontime , style: const TextStyle(
                      fontFamily: "Brandon" ,
                      fontSize: 18,
                      fontWeight: FontWeight.normal,
                      color: Colors.white
            
                    ),) ],),
                ]
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(20),
            child: Container(
              height: MediaQuery.of(context).size.height*0.25,
              width: MediaQuery.of(context).size.width,
               decoration:  BoxDecoration(
                color: Colors.white,
                  borderRadius:  BorderRadius.circular(20)
              , ),
              child:  Padding(
                padding: const EdgeInsets.all(20),
                child: Column(
                     crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text("From", style: TextStyle(
                        fontFamily: "Brandon" ,
                        fontSize: 16,
                        fontWeight: FontWeight.normal,
                        color: Colors.grey
                          
                      ),),
                       Text(widget.detailedtransaction.recieverbankname, style: const TextStyle(
                        fontFamily: "Brandon" ,
                        fontSize: 16,
                        fontWeight: FontWeight.normal,
                        
                          
                      ),),
                      Text(widget.detailedtransaction.recievernumber, style: const TextStyle(
                        fontFamily: "Brandon" ,
                        fontSize: 16,
                        fontWeight: FontWeight.normal,
                        
                          
                      ),),
                       const Text("To", style: TextStyle(
                        fontFamily: "Brandon" ,
                        fontSize: 16,
                        fontWeight: FontWeight.normal,
                        color: Colors.grey
                          
                      ),),
                      Text(widget.detailedtransaction.senderbankname, style: const TextStyle(
                        fontFamily: "Brandon" ,
                        fontSize: 16,
                        fontWeight: FontWeight.normal,
                        
                          
                      ),),
                      Text(widget.detailedtransaction.sendernumber, style: const TextStyle(
                        fontFamily: "Brandon" ,
                        fontSize: 16,
                        fontWeight: FontWeight.normal,
                        
                          
                      ),),
                       const Text("Refrence number", style: TextStyle(
                        fontFamily: "Brandon" ,
                        fontSize: 16,
                        fontWeight: FontWeight.normal,
                        color: Colors.grey
                          
                      ),),
                      Text(widget.detailedtransaction.refrencenumber.toString(), style: const TextStyle(
                        fontFamily: "Brandon" ,
                        fontSize: 16,
                        fontWeight: FontWeight.normal,
                        
                          
                      ),),
                  ],
                ),
              )
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 20,right: 20 ,bottom: 20),
            child: Container(
            height: MediaQuery.of(context).size.height*0.2,
              width: MediaQuery.of(context).size.width,
               decoration:  BoxDecoration(
                color: const Color.fromARGB(255, 126, 126, 126),
                  borderRadius:  BorderRadius.circular(20)
              , ),
              child:  Padding(
                padding: const EdgeInsets.all(20),
                child: Column(
                 crossAxisAlignment: CrossAxisAlignment.start,
                  children: [ const Text("Serice fee + Tax", style: TextStyle(
                        fontFamily: "Brandon" ,
                        fontSize: 16,
                        fontWeight: FontWeight.normal,
                        color: Colors.grey
                          
                      ),),
                      Text("Rs. ${widget.detailedtransaction.servicecharges.toString()}", style: const TextStyle(
                        fontFamily: "Brandon" ,
                        fontSize: 16,
                        fontWeight: FontWeight.normal,
                        color: MyColors.greenColor
                          
                      ),)],
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}