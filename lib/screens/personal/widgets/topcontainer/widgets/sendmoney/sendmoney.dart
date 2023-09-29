import 'package:flutter/material.dart';
import 'package:sadapayclone/constants/colors.dart';
import 'package:sadapayclone/data/amount.dart';
import 'package:sadapayclone/screens/personal/widgets/topcontainer/widgets/sendmoney/widgets/sendbutton.dart';

class SendMoney extends StatefulWidget {
  const SendMoney({super.key});

  @override
  State<SendMoney> createState() => _SendMoneyState();
}

class _SendMoneyState extends State<SendMoney> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: MyColors.pinkColor,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        leading: IconButton(
          onPressed: () => Navigator.pop(context),
          icon: const Icon(Icons.arrow_back_ios, color: Colors.white),
        ),
        title: Column(
          mainAxisSize: MainAxisSize.min,
          children:  [
            const Text(
              "Current balance",
              style: TextStyle(
                fontFamily: "Brandon",
                color: Colors.white,
                fontSize: 16,
                fontWeight: FontWeight.w300
              ),
            ),
             Text(
              "Rs. $accountBalance",
              style: const TextStyle(
                fontFamily: "Brandon",
               color: Colors.white,
                fontSize: 16,
                fontWeight: FontWeight.bold
              ),
            ),
          ],
        ),
        
        centerTitle: true,
        
      ),
      body:  Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            const Center(
              child: Text("Rs. 0",  style: TextStyle(
                    fontFamily: "Brandon",
                   color: Colors.white,
                    fontSize: 50,
                    fontWeight: FontWeight.bold
                  ),),
            ),
            const SizedBox(height: 80,),
            Padding(
              padding: const EdgeInsets.only(left:50 ,right: 50 ,bottom: 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  TextButton(onPressed: (){}, child: const Text("1",  style: TextStyle(
                      fontFamily: "Brandon",
                     color: Colors.white,
                      fontSize: 28,
                      fontWeight: FontWeight.bold
                    ),)),
                    TextButton(onPressed: (){}, child: const Text("2",  style: TextStyle(
                      fontFamily: "Brandon",
                     color: Colors.white,
                      fontSize: 28,
                      fontWeight: FontWeight.bold
                    ),)),
                    TextButton(onPressed: (){}, child: const Text("3",  style: TextStyle(
                      fontFamily: "Brandon",
                     color: Colors.white,
                      fontSize: 28,
                      fontWeight: FontWeight.bold
                    ),))
                ],
              ),
            ),
              Padding(
              padding: const EdgeInsets.only(left:50 ,right: 50 ,bottom: 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  TextButton(onPressed: (){}, child: const Text("4",  style: TextStyle(
                      fontFamily: "Brandon",
                     color: Colors.white,
                      fontSize: 28,
                      fontWeight: FontWeight.bold
                    ),)),
                    TextButton(onPressed: (){}, child: const Text("5",  style: TextStyle(
                      fontFamily: "Brandon",
                     color: Colors.white,
                      fontSize: 28,
                      fontWeight: FontWeight.bold
                    ),)),
                    TextButton(onPressed: (){}, child: const Text("6",  style: TextStyle(
                      fontFamily: "Brandon",
                     color: Colors.white,
                      fontSize: 28,
                      fontWeight: FontWeight.bold
                    ),))
                ],
              ),
            ),
              Padding(
              padding: const EdgeInsets.only(left:50 ,right: 50 ,bottom: 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  TextButton(onPressed: (){}, child: const Text("7",  style: TextStyle(
                      fontFamily: "Brandon",
                     color: Colors.white,
                      fontSize: 28,
                      fontWeight: FontWeight.bold
                    ),)),
                    TextButton(onPressed: (){}, child: const Text("8",  style: TextStyle(
                      fontFamily: "Brandon",
                     color: Colors.white,
                      fontSize: 28,
                      fontWeight: FontWeight.bold
                    ),)),
                    TextButton(onPressed: (){}, child: const Text("9",  style: TextStyle(
                      fontFamily: "Brandon",
                     color: Colors.white,
                      fontSize: 28,
                      fontWeight: FontWeight.bold
                    ),))
                ],
              ),
            ),
             Padding(
              padding: const EdgeInsets.only(left:50 ,right: 70 ,bottom: 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                 
                    Padding(
                      padding: const EdgeInsets.only(left:77),
                      child: TextButton(onPressed: (){}, child: const Text("0",  style: TextStyle(
                        fontFamily: "Brandon",
                       color: Colors.white,
                        fontSize: 28,
                        fontWeight: FontWeight.bold
                      ),)),
                    ),

                InkWell(
                  onTap: (){},
                  child: Image.asset("assets/images/delete.png"))
                ],
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  height: 60,
                  width: MediaQuery.of(context).size.width*0.43,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(12),
                    color: Colors.black
                  ),
                  child: const Center(
                    child: Text("Request",  style: TextStyle(
                              fontFamily: "Brandon",
                             color: Colors.white,
                              fontSize: 22,
                              fontWeight: FontWeight.bold
                            )),
                  ),
                ),
                  InkWell(
                    onTap: () {
                      Navigator.push(context, MaterialPageRoute(builder: (context) => const MoneyTransfer(),));
                    },
                    child: Container(
                                height: 60,
                                width: MediaQuery.of(context).size.width*0.43,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(12),
                                  color: Colors.black
                                ),
                                child: const Center(
                                  child: Text("Send",  style: TextStyle(
                            fontFamily: "Brandon",
                           color: Colors.white,
                            fontSize: 22,
                            fontWeight: FontWeight.bold
                          )),
                                ),
                              ),
                  )
              ],
            ),
           
          ],
        ),
      ),
    );
  }
}