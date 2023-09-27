import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:sadapayclone/constants/colors.dart';

class EnterAmountScreen extends StatefulWidget {
    final String phoneNumber;
  final String networkImageAsset;
  final String networkProvider;
  const EnterAmountScreen({super.key, required this.phoneNumber, required this.networkImageAsset, required this.networkProvider});

  @override
  State<EnterAmountScreen> createState() => _EnterAmountScreenState();
}

class _EnterAmountScreenState extends State<EnterAmountScreen> {

  final TextEditingController enteramount =TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        leading: IconButton(
          onPressed: () => Navigator.pop(context),
          icon: const Icon(Icons.arrow_back_ios, color: Colors.black),
        ),
        title: const Text(
          "Mobile top up",
          style: TextStyle(
            fontFamily: "Brandon",
            color: Colors.black,
          ),
        ),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            SizedBox(
              child: Column(
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
                  const SizedBox(height: 20,),
                  SizedBox(
                    height: 45,
                    child: TextField(
                        keyboardType: TextInputType.number,
              inputFormatters: [FilteringTextInputFormatter.digitsOnly],
                      controller: enteramount,
                      onChanged: (value) {
                        setState(() {
                  
                        });
                  
                      },
                      decoration: InputDecoration(
                        hintText: "Enter amount 100 -5000",
                        enabledBorder: OutlineInputBorder(
                          borderSide: const BorderSide(
                            width: 2.5,
                            color: Colors.black,
                          ),
                          borderRadius: BorderRadius.circular(50.0),
                        ),
                         focusedBorder: OutlineInputBorder( // Customize the focused border here
                  borderSide: const BorderSide(
              width: 2.5,
              color: Colors.black, // Change the color when focused
                  ),
                  borderRadius: BorderRadius.circular(50.0),
                ),
                      ),
                    ),
                  ),
                  const SizedBox(height: 20,),
                  Container(
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(20)
                    ),
                    height: 80,
                    width: MediaQuery.of(context).size.width,
                    child: ListTile(
                      leading: CircleAvatar(
                        backgroundColor: const Color.fromRGBO(255, 255, 255, 1),
                   child:   Image.asset(widget.networkImageAsset), // Provide a default image if null
                      ),
                      title: Text(widget.phoneNumber, style: const TextStyle(fontSize: 18 ,fontWeight: FontWeight.bold)),
                      subtitle: Text(widget.networkProvider, style: const TextStyle(fontSize: 18)), // Display the network provider name
                    ),
                  ),
                 
                ],
              ),
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
               child: Container(
                 decoration: BoxDecoration(
                   color: MyColors.pinkColor,
                   borderRadius: BorderRadius.circular(20),
                 ),
                 child: const Padding(
                   padding: EdgeInsets.all(20),
                   child: Row(
                     mainAxisAlignment: MainAxisAlignment.spaceBetween,
                     children: [Text("Top up" ,  style: TextStyle(
                     fontFamily: "Brandon",
                     fontSize: 20,
                     color: Colors.white,
                   ),), ],
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