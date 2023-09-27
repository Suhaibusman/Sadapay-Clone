import 'package:flutter/material.dart';
import 'package:sadapayclone/constants/colors.dart';
import 'package:sadapayclone/screens/payment/Bills%20and%20utilities/widget/bill_list.dart';


class BillsScreen extends StatefulWidget {
  const BillsScreen({super.key});

  @override
  State<BillsScreen> createState() => _BillsScreenState();
}

class _BillsScreenState extends State<BillsScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(height: 20,),
              IconButton(onPressed:()=> Navigator.pop(context), icon: const Icon(Icons.arrow_back_ios)),
                   const SizedBox(height: 20,),
  const Text("Mobile top up" , style: TextStyle(
                      fontFamily: "Brandon" ,
                      fontSize: 35,
                      // fontWeight: FontWeight.w500,
                      color: Colors.black
                    ),),
                        const SizedBox(height: 20,),
                  InkWell(
                    onTap: (){
                      setState(() {
                        Navigator.push(context, MaterialPageRoute(builder: (context) => const BillList (),));
                      });
                    },
                    child: Container(
                     
                      height: MediaQuery.of(context).size.height*0.15,
                      width: MediaQuery.of(context).size.width,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(20)
                      ),
                      child: Row(
                                  children: [
                    //  const SizedBox(width: 20,),
                    Padding(
                      padding: const EdgeInsets.only(left: 20),
                      child: Container(
                        height: 60,
                        width: 60,
                        decoration: BoxDecoration(
                          borderRadius: const BorderRadius.all(Radius.circular(20)), 
                          color: MyColors.pinkColor.withOpacity(0.2)
                        ),
                        child:  const Icon(Icons.receipt_sharp ,color: MyColors.pinkColor, size: 40,)),
                    ),
                                  Padding(
                    padding: const EdgeInsets.only(left:20),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                            const Text("New bill payment" , style: TextStyle(
                        fontFamily: "Brandon" ,
                        fontSize: 20,
                        fontWeight: FontWeight.w500,
                        color: Colors.black
                      ),),
                         SizedBox(
                          width: MediaQuery.of(context).size.width*0.6,
                           child: Text("Pay your bills to 900+ companies in Pakistan" , style: TextStyle(
                           
                                               fontFamily: "Brandon" ,
                                               fontSize: 16,
                                               fontWeight: FontWeight.w500,
                                               color: Colors.grey[600]
                                             ),),
                         ),
                      ],
                    ),
                                  )
                                  
                                  ],
                                ),
                    ),
                  )  
           
           ],
          ),
        ),
      ),
    );
  }
}