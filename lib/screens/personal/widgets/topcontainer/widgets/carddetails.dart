import 'package:flutter/material.dart';
import 'package:sadapayclone/constants/colors.dart';
import 'package:sadapayclone/constants/images.dart';

class CardDetails extends StatefulWidget {
  const CardDetails({Key? key}) : super(key: key);

  @override
  State<CardDetails> createState() => _CardDetailsState();
}

class _CardDetailsState extends State<CardDetails> {
  bool isVieworHide = false;
  bool isVirtualCardVisible = true;
  bool isPhysicalCardVisible = false;
  bool isCardDetailsVisible = false;
  bool isCardDetailsHidden = true;
  bool isSwitchedon = false;
  String virtualCardNumb = "5278588706895164"; // Your card number here
  String virtualCardexpDate = "07/28";
  String virtualCardcvc = "032";
  String getlastvirtualcardnumber() {
    return virtualCardNumb.substring(virtualCardNumb.length - 4);
  }

  String physicalCardNumb = "5278588696995165"; // Your card number here
  String physicalCardexpDate = "07/28";
  String physicalCardcvc = "032";
  String getlastphysicalcardnumber() {
    return physicalCardNumb.substring(physicalCardNumb.length - 4);
  }

  void showVirtualCard() {
    setState(() {
      isVirtualCardVisible = true;
      isPhysicalCardVisible = false;
      isCardDetailsVisible = false;
      // isCardDetailsHidden= true; // Hide card details when switching between cards
    });
  }

  void vieworhidebutton() {
    if (isVieworHide == false) {
      isCardDetailsHidden = false;
      isVieworHide = true;
    } else if (isVieworHide == true) {
      isCardDetailsHidden = true;
      isVieworHide = false;
    }
  }

  void showPhysicalCard() {
    setState(() {
      isVirtualCardVisible = false;
      isPhysicalCardVisible = true;
      isCardDetailsVisible =
          false; // Hide card details when switching between cards
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
              Column(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Visibility(
                    visible: isVirtualCardVisible,
                    child: Column(
                      children: [
                        Center(
                          child: Material(
                            color: Colors.transparent,
                            elevation: 20,
                            child: Container(
                              height: MediaQuery.of(context).size.height * 0.4,
                              width: MediaQuery.of(context).size.width * 0.6,
                              decoration: BoxDecoration(
                                image: DecorationImage(
                                    fit: BoxFit.fill,
                                    image: isSwitchedon
                                        ? const AssetImage(
                                            "assets/images/freezenew.jpg")
                                        : const AssetImage(
                                            "assets/images/whitebg.png")),
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(20),
                              ),
                              child: Padding(
                                padding: const EdgeInsets.all(20),
                                child: Column(
                                  children: [
                                    Row(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        Image.asset(
                                          Myimages.sadapaycolouredlogo,
                                          height: 50,
                                          width: 50,
                                        ),
                                        Column(
                                          children: [
                                            SizedBox(
                                              width: 60,
                                              child: Column(
                                                children: [
                                                  isCardDetailsHidden == true
                                                      ? Text(
                                                          "•••• •••• •••• ${getlastvirtualcardnumber()}",
                                                          textAlign:
                                                              TextAlign.right,
                                                          style:
                                                              const TextStyle(
                                                            height: 2,
                                                            color: Colors.grey,
                                                            fontFamily:
                                                                "Brandon",
                                                            fontWeight:
                                                                FontWeight.bold,
                                                            letterSpacing:
                                                                6.0, // Adjust the spacing as needed
                                                          ),
                                                        )
                                                      :  Text(
                                                          virtualCardNumb,
                                                          textAlign:
                                                              TextAlign.right,
                                                          style: const TextStyle(
                                                            height: 2,
                                                            color: Colors.grey,
                                                            fontFamily:
                                                                "Brandon",
                                                            fontWeight:
                                                                FontWeight.bold,
                                                            letterSpacing:
                                                                6.0, // Adjust the spacing as needed
                                                          ),
                                                        ),
                                                ],
                                              ),
                                            ),
                                          ],
                                        ),
                                      ],
                                    ),
                                    const SizedBox(
                                      height: 20,
                                    ),
                                    Row(
                                      mainAxisAlignment: MainAxisAlignment.end,
                                      children: [
                                        const Text(
                                          "Exp date",
                                          style: TextStyle(
                                            color: Colors.grey,
                                            fontFamily: "Brandon",
                                            fontWeight: FontWeight.bold,
                                            // Adjust the spacing as needed
                                          ),
                                        ),
                                        isCardDetailsHidden == true
                                            ? const Text(
                                                " ••/••",
                                                style: TextStyle(
                                                  // height: 2,
                                                  color: Colors.grey,
                                                  fontFamily: "Brandon",
                                                  fontWeight: FontWeight.bold,
                                                  letterSpacing:
                                                      6.0, // Adjust the spacing as needed
                                                ),
                                              )
                                            : const Text(
                                                " 06/27",
                                                style: TextStyle(
                                                  // height: 2,
                                                  color: Colors.grey,
                                                  fontFamily: "Brandon",
                                                  fontWeight: FontWeight.bold,
                                                  letterSpacing:
                                                      6.0, // Adjust the spacing as needed
                                                ),
                                              ),
                                      ],
                                    ),
                                    const SizedBox(
                                      height: 10,
                                    ),
                                    Row(
                                      mainAxisAlignment: MainAxisAlignment.end,
                                      children: [
                                        const Text(
                                          "CVC",
                                          style: TextStyle(
                                            color: Colors.grey,
                                            fontFamily: "Brandon",
                                            fontWeight: FontWeight.bold,
                                            // Adjust the spacing as needed
                                          ),
                                        ),
                                        isCardDetailsHidden == true
                                            ? const Text(
                                                " •••",
                                                style: TextStyle(
                                                  //     height: 2,
                                                  color: Colors.grey,
                                                  fontFamily: "Brandon",
                                                  fontWeight: FontWeight.bold,
                                                  letterSpacing:
                                                      6.0, // Adjust the spacing as needed
                                                ),
                                              )
                                            : const Text(
                                                "030",
                                                style: TextStyle(
                                                  //   height: 2,
                                                  color: Colors.grey,
                                                  fontFamily: "Brandon",
                                                  fontWeight: FontWeight.bold,
                                                  letterSpacing:
                                                      6.0, // Adjust the spacing as needed
                                                ),
                                              )
                                      ],
                                    ),
                                    const SizedBox(
                                      height: 30,
                                    ),
                                    Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      children: [
                                        InkWell(
                                          onTap: () {
                                            setState(() {
                                              vieworhidebutton();
                                            });
                                          },
                                          child: Container(
                                            height: 40,
                                            width: 80,
                                            decoration: BoxDecoration(
                                                borderRadius:
                                                    BorderRadius.circular(20),
                                                color: Colors.grey),
                                            child: Center(
                                              child: isVieworHide == false
                                                  ? const Text(
                                                      "View",
                                                      style: TextStyle(
                                                          color: Colors.white,
                                                          fontFamily: "Brandon",
                                                          fontWeight:
                                                              FontWeight.w400,
                                                          fontSize: 16),
                                                    )
                                                  : const Text(
                                                      "Hide",
                                                      style: TextStyle(
                                                          color: Colors.white,
                                                          fontFamily: "Brandon",
                                                          fontWeight:
                                                              FontWeight.w400,
                                                          fontSize: 16),
                                                    ),
                                            ),
                                          ),
                                        ),
                                        const SizedBox(
                                          width: 10,
                                        ),
                                        Container(
                                          height: 40,
                                          width: 80,
                                          decoration: BoxDecoration(
                                              borderRadius:
                                                  BorderRadius.circular(20),
                                              color: Colors.grey),
                                          child: const Center(
                                            child: Text(
                                              "Copy",
                                              style: TextStyle(
                                                  color: Colors.white,
                                                  fontFamily: "Brandon",
                                                  fontWeight: FontWeight.w400,
                                                  fontSize: 16),
                                            ),
                                          ),
                                        )
                                      ],
                                    )
                                  ],
                                ),
                              ),
                            ),
                          ),
                        ),
                        const SizedBox(
                          height: 20,
                        ),
                        SwitchListTile(
                          value: isSwitchedon,
                          onChanged: (bool value) {
                            setState(() {
                              isSwitchedon = value;
                            });
                          },
                          secondary: CircleAvatar(
                            backgroundColor: Colors.white,
                            child: Image.asset("assets/images/freezeicon.png"),
                          ),
                          title: const Text(
                            "Freeze card",
                            style: TextStyle(
                              fontFamily: "Brandon",
                              fontSize: 17,
                              fontWeight: FontWeight.w500,
                              color: Colors.black,
                            ),
                          ),
                          subtitle: Text(
                            isSwitchedon
                                ? "Unlock this card to use it"
                                : "Lock this card temporarily",
                            style: TextStyle(
                              fontFamily: "Brandon",
                              fontSize: 15,
                              fontWeight: FontWeight.w400,
                              color: Colors.grey[400],
                            ),
                          ),
                        )
                      ],
                    ),
                  )
                ],
              ),

              Visibility(
                visible: isPhysicalCardVisible,
                child: Column(
                  children: [
                    Center(
                          child: Material(
                            color: Colors.transparent,
                            elevation: 20,
                            child: Container(
                              height: MediaQuery.of(context).size.height * 0.4,
                              width: MediaQuery.of(context).size.width * 0.6,
                              decoration: BoxDecoration(
                                image: DecorationImage(
                                    fit: BoxFit.fill,
                                    image: isSwitchedon
                                        ? const AssetImage(
                                            "assets/images/freezenew.jpg")
                                        : const AssetImage(
                                            "assets/images/green.png")),
                                color: MyColors.greenColor,
                                borderRadius: BorderRadius.circular(20),
                              ),
                              child: Padding(
                                padding: const EdgeInsets.all(20),
                                child: Column(
                                  children: [
                                    Row(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        Image.asset(
                                          Myimages.sadapaywhitelogo,
                                          height: 50,
                                          width: 50,
                                        ),
                                        Column(
                                          children: [
                                            SizedBox(
                                              width: 60,
                                              child: Column(
                                                children: [
                                                  isCardDetailsHidden == true
                                                      ? Text(
                                                          "•••• •••• •••• ${getlastphysicalcardnumber()}",
                                                          textAlign:
                                                              TextAlign.right,
                                                          style:
                                                              const TextStyle(
                                                            height: 2,
                                                            color: Colors.white,
                                                            fontFamily:
                                                                "Brandon",
                                                            fontWeight:
                                                                FontWeight.bold,
                                                            letterSpacing:
                                                                6.0, // Adjust the spacing as needed
                                                          ),
                                                        )
                                                      :  Text(
                                                          physicalCardNumb,
                                                          textAlign:
                                                              TextAlign.right,
                                                          style: const TextStyle(
                                                            height: 2,
                                                            color: Colors.white,
                                                            fontFamily:
                                                                "Brandon",
                                                            fontWeight:
                                                                FontWeight.bold,
                                                            letterSpacing:
                                                                6.0, // Adjust the spacing as needed
                                                          ),
                                                        ),
                                                ],
                                              ),
                                            ),
                                          ],
                                        ),
                                      ],
                                    ),
                                    const SizedBox(
                                      height: 20,
                                    ),
                                    Row(
                                      mainAxisAlignment: MainAxisAlignment.end,
                                      children: [
                                        const Text(
                                          "Exp date",
                                          style: TextStyle(
                                            color: Colors.white,
                                            fontFamily: "Brandon",
                                            fontWeight: FontWeight.bold,
                                            // Adjust the spacing as needed
                                          ),
                                        ),
                                        isCardDetailsHidden == true
                                            ? const Text(
                                                " ••/••",
                                                style: TextStyle(
                                                  // height: 2,
                                                  color: Colors.white,
                                                  fontFamily: "Brandon",
                                                  fontWeight: FontWeight.bold,
                                                  letterSpacing:
                                                      6.0, // Adjust the spacing as needed
                                                ),
                                              )
                                            : const Text(
                                                " 06/27",
                                                style: TextStyle(
                                                  // height: 2,
                                                  color: Colors.white,
                                                  fontFamily: "Brandon",
                                                  fontWeight: FontWeight.bold,
                                                  letterSpacing:
                                                      6.0, // Adjust the spacing as needed
                                                ),
                                              ),
                                      ],
                                    ),
                                    const SizedBox(
                                      height: 10,
                                    ),
                                    Row(
                                      mainAxisAlignment: MainAxisAlignment.end,
                                      children: [
                                        const Text(
                                          "CVC",
                                          style: TextStyle(
                                            color: Colors.white,
                                            fontFamily: "Brandon",
                                            fontWeight: FontWeight.bold,
                                            // Adjust the spacing as needed
                                          ),
                                        ),
                                        isCardDetailsHidden == true
                                            ? const Text(
                                                " •••",
                                                style: TextStyle(
                                                  //     height: 2,
                                                  color: Colors.white,
                                                  fontFamily: "Brandon",
                                                  fontWeight: FontWeight.bold,
                                                  letterSpacing:
                                                      6.0, // Adjust the spacing as needed
                                                ),
                                              )
                                            : const Text(
                                                "030",
                                                style: TextStyle(
                                                  //   height: 2,
                                                  color: Colors.white,
                                                  fontFamily: "Brandon",
                                                  fontWeight: FontWeight.bold,
                                                  letterSpacing:
                                                      6.0, // Adjust the spacing as needed
                                                ),
                                              )
                                      ],
                                    ),
                                    const SizedBox(
                                      height: 30,
                                    ),
                                    Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      children: [
                                        InkWell(
                                          onTap: () {
                                            setState(() {
                                              vieworhidebutton();
                                            });
                                          },
                                          child: Container(
                                            height: 40,
                                            width: 80,
                                            decoration: BoxDecoration(
                                                borderRadius:
                                                    BorderRadius.circular(20),
                                                color: const Color(0xff005244)),
                                            child: Center(
                                              child: isVieworHide == false
                                                  ? const Text(
                                                      "View",
                                                      style: TextStyle(
                                                          color: Colors.white,
                                                          fontFamily: "Brandon",
                                                          fontWeight:
                                                              FontWeight.w400,
                                                          fontSize: 16),
                                                    )
                                                  : const Text(
                                                      "Hide",
                                                      style: TextStyle(
                                                          color: Colors.white,
                                                          fontFamily: "Brandon",
                                                          fontWeight:
                                                              FontWeight.w400,
                                                          fontSize: 16),
                                                    ),
                                            ),
                                          ),
                                        ),
                                        const SizedBox(
                                          width: 10,
                                        ),
                                        Container(
                                          height: 40,
                                          width: 80,
                                          decoration: BoxDecoration(
                                              borderRadius:
                                                  BorderRadius.circular(20),
                                              color: const Color(0xff005244)),
                                          child: const Center(
                                            child: Text(
                                              "Copy",
                                              style: TextStyle(
                                                  color: Colors.white,
                                                  fontFamily: "Brandon",
                                                  fontWeight: FontWeight.w400,
                                                  fontSize: 16),
                                            ),
                                          ),
                                        )
                                      ],
                                    )
                                  ],
                                ),
                              ),
                            ),
                          ),
                        ),
                    const SizedBox(
                      height: 20,
                    ),
                    SwitchListTile(
                      value: isSwitchedon,
                      onChanged: (bool value) {
                        setState(() {
                          isSwitchedon = value;
                        });
                      },
                      secondary: CircleAvatar(
                        backgroundColor: Colors.white,
                        child: Image.asset("assets/images/freezeicon.png"),
                      ),
                      title: const Text(
                        "Freeze card",
                        style: TextStyle(
                          fontFamily: "Brandon",
                          fontSize: 17,
                          fontWeight: FontWeight.w500,
                          color: Colors.black,
                        ),
                      ),
                      subtitle: Text(
                        isSwitchedon
                            ? "Unlock this card to use it"
                            : "Lock this card temporarily",
                        style: TextStyle(
                          fontFamily: "Brandon",
                          fontSize: 15,
                          fontWeight: FontWeight.w400,
                          color: Colors.grey[400],
                        ),
                      ),
                    ),
                    ListTile(
                      leading: Image.asset("assets/images/changepin.png"),
                      title: const Text(
                        "Change debit card PIN",
                        style: TextStyle(
                          fontFamily: "Brandon",
                          fontSize: 17,
                          fontWeight: FontWeight.w500,
                          color: Colors.black,
                        ),
                      ),
                      subtitle: Text(
                        "Update debit card PIN",
                        style: TextStyle(
                          fontFamily: "Brandon",
                          fontSize: 15,
                          fontWeight: FontWeight.w400,
                          color: Colors.grey[400],
                        ),
                      ),
                    ),
                    ListTile(
                      leading: Image.asset("assets/images/lostcard.png"),
                      title: const Text(
                        "Report an issue with your card",
                        style: TextStyle(
                          fontFamily: "Brandon",
                          fontSize: 17,
                          fontWeight: FontWeight.w500,
                          color: Colors.black,
                        ),
                      ),
                      subtitle: Text(
                        "Card is lost, stolen, damaged or compromised",
                        style: TextStyle(
                          fontFamily: "Brandon",
                          fontSize: 15,
                          fontWeight: FontWeight.w400,
                          color: Colors.grey[400],
                        ),
                      ),
                    )
                  ],
                ),
              )
              // Physical Card Content
            ],
          ),
        ),
      ),
    );
  }
}
