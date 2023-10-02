import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:sadapayclone/constants/colors.dart';
import 'package:sadapayclone/data/amount.dart';
import 'package:sadapayclone/data/balance_record.dart';

import 'package:sadapayclone/screens/personal/personalscreen.dart';

class EnterAmountScreen extends StatefulWidget {
  final String phoneNumber;
  final String networkImageAsset;
  final String networkProvider;

  const EnterAmountScreen(
      {Key? key,
      required this.phoneNumber,
      required this.networkImageAsset,
      required this.networkProvider})
      : super(key: key);

  @override
  State<EnterAmountScreen> createState() => _EnterAmountScreenState();
}

class _EnterAmountScreenState extends State<EnterAmountScreen> {
   String? errorMessage;
  
   validateAmount() {
    try {
      final int amount = int.parse(enteramount.text);
      if (amount < 100 || amount > 5000) {
        setState(() {
          errorMessage = 'Please enter an amount between Rs. 100 and Rs. 5000.';
        });
      }else  if (amount > accountBalance ) {
        setState(() {
          errorMessage = 'Insufficinet Balance';
        });
      } 
      
      
      else {
        // Amount is valid, clear the error message.
        setState(() {
          errorMessage = null;
        });
      }
    } catch (e) {
      setState(() {
        errorMessage = 'Invalid amount.';
      });
    }
  }


accountbalancecheck(){
  try {
    final int amount = int.parse(enteramount.text); 
    if(amount > accountBalance ) {
      
        return  const Text('Insufficient Balance');
  
      }
      else{
       accountBalance -= amount;
    
         
       
   BalancePart.balance.add(BalancePart(image: widget.networkImageAsset, phonenumber: widget.phoneNumber));
     
        return Text('Amount of Rs. $amount has been deducted. New Balance: Rs. $accountBalance');
        
      } 
  } catch (e) {
    // ignore: avoid_print
    print(e); 
  }
 
}
titleselector(){
  try {
    final int amount = int.parse(enteramount.text); 
    if(amount > accountBalance ) {
      
        return  const Text('Insufficient Balance');
  
      }
      else{ 
         
        return const Text('Top-Up Successful');
      
      } 
  } catch (e) {
    // ignore: avoid_print
    print(e); 
  }
 
}
  final TextEditingController enteramount = TextEditingController();
  // Replace with your actual balance
      List balance  = [];
        void _getBalancePart() {
    setState(() {
      balance = BalancePart.getBalancePart();
    });
  }
    


  @override
  Widget build(BuildContext context) {
    _getBalancePart();
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        leading: IconButton(
          onPressed: () => Navigator.pop(context),
          icon: const Icon(Icons.arrow_back_ios, color: Colors.black),
        ),
        title: const Text(
          "Mobile top-up",
          style: TextStyle(
            fontFamily: "Brandon",
            color: Colors.black,
          ),
        ),
        centerTitle: true,
        actions: [
          IconButton(
          onPressed: () async => await Navigator.push(context, MaterialPageRoute(builder: (context) => const PersonalScreen(),)),
          icon: const Icon(Icons.close, color: Colors.black),
        ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text(
                  "Mobile number",
                  style: TextStyle(
                    fontFamily: "Brandon",
                    fontSize: 16,
                    color: Colors.black,
                  ),
                ),
                const SizedBox(height: 20),
                SizedBox(
                  
                  height: 45,
                  child: TextField(
                    
                    keyboardType: TextInputType.number,
                    inputFormatters: [FilteringTextInputFormatter.digitsOnly],
                    controller: enteramount,
                    onChanged: (value) {
                      setState(() {
                        errorMessage = null;
                      });
                    },
                    decoration: InputDecoration(
                      hintText: "Enter amount 100 - 5000",
                      enabledBorder: OutlineInputBorder(
                        borderSide: const BorderSide(
                          
                          color: Colors.black,
                        ),
                        borderRadius: BorderRadius.circular(50.0),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderSide: const BorderSide(
                          width: 2.5,
                          color: Colors.black,
                        ),
                        borderRadius: BorderRadius.circular(50.0),
                      ),
                    ),
                  ),
                ),
                const SizedBox(height: 20),
                Container(
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(20),
                  ),
                  height: 80,
                  width: MediaQuery.of(context).size.width,
                  child: ListTile(
                    leading: CircleAvatar(
                      backgroundColor: const Color.fromRGBO(255, 255, 255, 1),
                      child:
                          Image.asset(widget.networkImageAsset), // Provide a default image if null
                    ),
                    title: Text(
                      widget.phoneNumber,
                      style: const TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                    ),
                    subtitle: Text(widget.networkProvider, style: const TextStyle(fontSize: 18)),
                  ),
                ),
              ],
            ),
            Visibility(
              visible: () {
                try {
                  int parsedValue = int.parse(enteramount.text);
                  return parsedValue >= 100 && parsedValue <= 5000;
                } catch (e) {
                  // Handle the case where enteramount.text is not a valid integer
                  return false;
                }
              }(),
              child: GestureDetector(
                onTap: () {
                  if (validateAmount() == null) {
                    // Valid amount, perform the top-up action here
                    showDialog(
                      context: context,
                      builder: (context) {
                        return AlertDialog(
                          title: titleselector(),
                          // content: Text('Amount of Rs. ${enteramount.text} has been added.'),
                         content: accountbalancecheck(),
                          actions: [
                            TextButton(
                              onPressed: () {
                                //  balance.add(BalancePart(image: widget.networkImageAsset, phonenumber: widget.phoneNumber));
                                Navigator.of(context).pop();
                              },
                              child: const Text('OK'),
                            ),
                          ],
                        );
                      },
                    );
                  } else {
                    // Invalid amount, show error message
                    ScaffoldMessenger.of(context).showSnackBar(
                      SnackBar(
                        content: Text(validateAmount()),
                      ),
                    );
                  }
                },
                child: Container(
                  decoration: BoxDecoration(
                    color: MyColors.pinkColor,
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: const Padding(
                    padding: EdgeInsets.all(20),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "Top up",
                          style: TextStyle(
                            fontFamily: "Brandon",
                            fontSize: 20,
                            color: Colors.white,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
