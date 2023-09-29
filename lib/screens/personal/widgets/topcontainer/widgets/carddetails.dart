import 'package:flutter/material.dart';
import 'package:sadapayclone/constants/images.dart';

class CardDetails extends StatefulWidget {
  const CardDetails({Key? key}) : super(key: key);

  @override
  State<CardDetails> createState() => _CardDetailsState();
}

class _CardDetailsState extends State<CardDetails> {
  bool isVirtualCardVisible = true;
  bool isPhysicalCardVisible = false;

  String cardNumber = "7666826762767432"; // Your card number here

  String getLast4Digits() {
    return cardNumber.substring(cardNumber.length - 4);
  }

  void showVirtualCard() {
    setState(() {
      isVirtualCardVisible = true;
      isPhysicalCardVisible = false;
    });
  }

  void showPhysicalCard() {
    setState(() {
      isVirtualCardVisible = false;
      isPhysicalCardVisible = true;
    });
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          elevation: 0,
          leading: IconButton(
            onPressed: () => Navigator.pop(context),
            icon: const Icon(Icons.arrow_back_ios, color: Colors.black),
          ),
          title: const Text(
            "My cards",
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
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                height: 50,
                width: MediaQuery.of(context).size.width,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(30),
                  color: Colors.grey[400],
                ),
                child: Padding(
                  padding: const EdgeInsets.only(left: 4, right: 4),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      GestureDetector(
                        onTap: showVirtualCard,
                        child: Container(
                          height: 40,
                          width: MediaQuery.of(context).size.width * 0.4,
                          decoration: BoxDecoration(
                            color: isVirtualCardVisible
                                ? Colors.white
                                : Colors.grey[400],
                            borderRadius: BorderRadius.circular(20),
                          ),
                          child: Center(
                            child: Text(
                              "Virtual",
                              style: TextStyle(
                                fontFamily: "Brandon",
                                color: isVirtualCardVisible
                                    ? Colors.black
                                    : Colors.grey,
                              ),
                            ),
                          ),
                        ),
                      ),
                      GestureDetector(
                        onTap: showPhysicalCard,
                        child: Container(
                          height: 40,
                          width: MediaQuery.of(context).size.width * 0.4,
                          decoration: BoxDecoration(
                            color: isPhysicalCardVisible
                                ? Colors.white
                                : Colors.grey[400],
                            borderRadius: BorderRadius.circular(20),
                          ),
                          child: Center(
                            child: Text(
                              "Physical",
                              style: TextStyle(
                                fontFamily: "Brandon",
                                color: isPhysicalCardVisible
                                    ? Colors.black
                                    : Colors.grey,
                              ),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              const SizedBox(height: 20), // Add spacing
              // Virtual Card Content
              Visibility(
                visible: isVirtualCardVisible,
                child: Center(
                  child: Material(
                    color: Colors.transparent,
                    elevation: 20,
                    child: Container(
                      height: MediaQuery.of(context).size.height * 0.4,
                      width: MediaQuery.of(context).size.width * 0.6,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(20),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.all(20),
                        child: Column(
                          children: [
                            Row(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Image.asset(
                                  Myimages.sadapaycolouredlogo,
                                  height: 50,
                                  width: 50,
                                ),
                                Column(
                                  children: [
                                    SizedBox(
                                      width: 50,
                                      child: Column(
                                        children: [
                                          Text(
                                            "••••••••••••",
                                            style: const TextStyle(
                                              height: 2,
                                              color: Colors.grey,
                                               fontFamily: "Brandon",
                                               fontWeight: FontWeight.bold,
                                              letterSpacing: 6.0, // Adjust the spacing as needed
                                            ),
                                          ),
                                          Text(
                                            getLast4Digits(),
                                            style: const TextStyle(
                                              color: Colors.grey,
                                               fontFamily: "Brandon",
                                               fontWeight: FontWeight.bold,
                                              letterSpacing: 3.0, // Adjust the spacing as needed
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ],
                                ),
                              ],
                            )
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
              ),
              // Physical Card Content
              Visibility(
                visible: isPhysicalCardVisible,
                child: Container(
                  // Replace with your physical card content
                  child: Column(
                    children: [
                      Row(
                        children: [
                          Image.asset(Myimages.sadapaycolouredlogo),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
