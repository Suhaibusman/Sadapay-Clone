import 'package:flutter/material.dart';
import 'package:sadapayclone/constants/colors.dart';
import 'package:sadapayclone/data/amount.dart';

class LoadMoney extends StatefulWidget {
  const LoadMoney({Key? key}) : super(key: key);

  @override
  State<LoadMoney> createState() => _LoadMoneyState();
}

class _LoadMoneyState extends State<LoadMoney> {
  bool isCopied = false;

  void copyToClipboard() {
    // Implement your copy logic here if needed.
    // You can use the Clipboard package or any other method.
    // For this example, we'll just toggle the 'isCopied' flag.
    setState(() {
      isCopied = true;
    });

    // Automatically hide the "Copied" message after 5 seconds.
    Future.delayed(const Duration(seconds: 1), () {
      setState(() {
        isCopied = false;
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Padding(
          padding: const EdgeInsets.all(20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              SizedBox(
                child: Column(
                   crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    IconButton(
                onPressed: () {
                  Navigator.pop(context);
                },
                icon: const Icon(Icons.arrow_back_ios_rounded),
              ),
              const SizedBox(height: 20,),
              const Text(
                "Load Money",
                style: TextStyle(
                  fontFamily: "Brandon",
                  fontSize: 25,
                  fontWeight: FontWeight.w600,
                  color: Colors.black,
                ),
              ),
              const SizedBox(height: 10,),
              Row(
                children: [
                  Text(
                    "Rs. ${totalLimit.toString() }",
                    style: const TextStyle(
                      fontFamily: "Brandon",
                      fontSize: 16,
                      fontWeight: FontWeight.w600,
                      color: MyColors.pinkColor,
                    ),
                  ),
                  Text(
                    " incoming limit left this month",
                    style: TextStyle(
                      fontFamily: "Brandon",
                      fontSize: 16,
                      fontWeight: FontWeight.w500,
                      color: Colors.grey[600],
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 20,),
              const Text(
                "Receive local transfers",
                style: TextStyle(
                  fontFamily: "Brandon",
                  fontSize: 20,
                  fontWeight: FontWeight.w600,
                  color: Colors.black,
                ),
              ),
              const SizedBox(height: 10,),
              InkWell(
                onTap: () {
                  copyToClipboard();
                },
                child: Container(
                  height: MediaQuery.of(context).size.height * 0.15,
                  width: MediaQuery.of(context).size.width,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    border: Border.all(color: const Color.fromARGB(255, 133, 133, 133)),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(20),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "My SadaPay account number",
                          style: TextStyle(
                            fontFamily: "Brandon",
                            fontSize: 15,
                            fontWeight: FontWeight.w600,
                            color: Colors.grey[400],
                          ),
                        ),
                        const Text(
                          "03112136120",
                          style: TextStyle(
                            fontFamily: "Brandon",
                            fontSize: 15,
                            fontWeight: FontWeight.w600,
                            color: Colors.black,
                          ),
                        ),
                        const Row(
                          children: [
                            Icon(
                              Icons.copy,
                              color: MyColors.pinkColor,
                            ),
                            Text(
                              "Copy",
                              style: TextStyle(
                                fontFamily: "Brandon",
                                fontSize: 20,
                                fontWeight: FontWeight.w600,
                                color: MyColors.pinkColor,
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
              ),
               const SizedBox(height: 10,),
              InkWell(
                onTap: () {
                  copyToClipboard();
                },
                child: Container(
                  height: MediaQuery.of(context).size.height * 0.15,
                  width: MediaQuery.of(context).size.width,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    border: Border.all(color: const Color.fromARGB(255, 133, 133, 133)),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(20),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "My SadaPay IBAN number",
                          style: TextStyle(
                            fontFamily: "Brandon",
                            fontSize: 15,
                            fontWeight: FontWeight.w600,
                            color: Colors.grey[400],
                          ),
                        ),
                        const Text(
                          "PK20 SADA 0000 0031 1213 6120",
                          style: TextStyle(
                            fontFamily: "Brandon",
                            fontSize: 15,
                            fontWeight: FontWeight.w600,
                            color: Colors.black,
                          ),
                        ),
                        const Row(
                          
                          children: [
                            Icon(
                              Icons.copy,
                              color: MyColors.pinkColor,
                            ),
                            Text(
                              "Copy",
                              style: TextStyle(
                                fontFamily: "Brandon",
                                fontSize: 20,
                                fontWeight: FontWeight.w600,
                                color: MyColors.pinkColor,
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
              ),
                  ],
                ),
              ),
              if (isCopied)
                Container(
                  padding: const EdgeInsets.all(10),
                  decoration: BoxDecoration(
                    color: Colors.black,
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: const Row(
                    mainAxisSize: MainAxisSize.min,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(Icons.done, color: Colors.white),
                      Text(
                        "Copied",
                        style: TextStyle(
                          fontFamily: "Brandon",
                          fontSize: 20,
                          fontWeight: FontWeight.w600,
                          color: Colors.white,
                        ),
                      ),
                    ],
                  ),
                ),
            ],
          ),
        ),
      ),
    );
  }
}
