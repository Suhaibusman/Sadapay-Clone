import 'package:flutter/material.dart';
import 'package:sadapayclone/constants/colors.dart';
import 'package:sadapayclone/constants/images.dart';
import 'package:sadapayclone/data/sadapayaccounts.dart';
import 'package:sadapayclone/screens/personal/widgets/topcontainer/widgets/sendmoney/widgets/sendamountpage/recieveamountpage.dart';

class RequestMoney extends StatefulWidget {
  final int amount;
  const RequestMoney({super.key, required this.amount});

  @override
  State<RequestMoney> createState() => _RequestMoneyState();
}

class _RequestMoneyState extends State<RequestMoney> {
  List<SadapayAccountPart> sadapay = [];
  final TextEditingController searchAccountName = TextEditingController();

  String getLast4digit(int index) {
    return sadapay[index]
        .phonenumber
        .substring(sadapay[index].phonenumber.length - 4);
  }

  void _getSadapayAccountPart() {
    setState(() {
      sadapay = SadapayAccountPart.getSadapayAccountPart();
    });
  }
    void navigatetonext(int index){
      setState(()  {
        Navigator.push(context, MaterialPageRoute(builder: (context) =>   RecieveAmountPage(number: sadapay[index].phonenumber , name:sadapay[index].username , amount: widget.amount ,
        //  amount: widget.amount
         ),));
      });
  } 

  @override
  Widget build(BuildContext context) {
    _getSadapayAccountPart();
    return SafeArea(
      child: Scaffold(
        // backgroundColor: Colors.white,
        body: Padding(
          padding: const EdgeInsets.all(20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              IconButton(
                  onPressed: () => Navigator.pop(context),
                  icon: const Icon(Icons.arrow_back_ios)),
              const SizedBox(
                height: 10,
              ),
              const Text(
                "Request money",
                style: TextStyle(
                    fontFamily: "Brandon",
                    fontSize: 25,
                    fontWeight: FontWeight.w400,
                    color: Colors.black),
              ),
              const SizedBox(
                height: 20,
              ),
              InkWell(
                onTap: () {
                  setState(() {
                    //  Navigator.push(context, MaterialPageRoute(builder: (context) => const Allsadapay(),));
                  });
                },
                child: Material(
                  elevation: 10,
                  color: Colors.transparent,
                  child: Container(
                    height: MediaQuery.of(context).size.height * 0.15,
                    width: MediaQuery.of(context).size.width,
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(20)),
                    child: Row(
                      children: [
                        const SizedBox(
                          width: 20,
                        ),
                        Container(
                            height: 60,
                            width: 60,
                            decoration: BoxDecoration(
                                borderRadius:
                                    const BorderRadius.all(Radius.circular(20)),
                                color: MyColors.pinkColor.withOpacity(0.2)),
                            child: const Icon(
                              Icons.request_quote_outlined,
                              color: MyColors.pinkColor,
                              size: 40,
                            )),
                        Padding(
                          padding: const EdgeInsets.only(left: 20),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              const Text(
                                "New money request",
                                style: TextStyle(
                                    fontFamily: "Brandon",
                                    fontSize: 18,
                                    fontWeight: FontWeight.w500,
                                    color: Colors.black),
                              ),
                              SizedBox(
                                width: MediaQuery.of(context).size.width * 0.6,
                                child: Text(
                                  "Request money instantly from Sadapay buddies",
                                  style: TextStyle(
                                      fontFamily: "Brandon",
                                      fontSize: 16,
                                      fontWeight: FontWeight.w300,
                                      color: Colors.grey[600]),
                                ),
                              ),
                            ],
                          ),
                        )
                      ],
                    ),
                  ),
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              SizedBox(
                height: 45,
                child: TextField(
                  keyboardType: TextInputType.text,
                  controller: searchAccountName,
                  onChanged: (value) {
                    setState(() {
                      // No need to filter the bank list here
                      // We will conditionally render the ListTile based on search
                    });
                  },
                  decoration: InputDecoration(
                    prefixIcon: const Icon(
                      Icons.search,
                      color: Colors.grey,
                    ),
                    hintText: "Search...",
                    enabledBorder: OutlineInputBorder(
                      borderSide: const BorderSide(
                        width: 2.5,
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
              const SizedBox(
                height: 20,
              ),
              Text(
                "QUICK REQUEST",
                style: TextStyle(
                    letterSpacing: 2,
                    fontFamily: "Brandon",
                    fontSize: 16,
                    fontWeight: FontWeight.w500,
                    color: Colors.grey[500]),
              ),
              const SizedBox(
                height: 20,
              ),
              Expanded(
                child: searchAccountName.text.isEmpty
                    ? ListView.builder(
                        itemCount: sadapay.length,
                        itemBuilder: (context, index) {
                          return InkWell(
                            onTap: () {
                               navigatetonext(index);
                            },
                            child: ListTile(
                              leading: CircleAvatar(
                                backgroundColor: Colors.white,
                                child: Image.asset(Myimages.sadapaycolouredlogo),
                              ),
                              title: Text(
                                sadapay[index].username,
                                style: const TextStyle(
                                  fontFamily: "Brandon",
                                  fontSize: 16,
                                  fontWeight: FontWeight.w500,
                                  color: Colors.black,
                                ),
                              ),
                              subtitle: Text(
                                "SadaPay *${getLast4digit(index)}",
                                style: TextStyle(
                                  fontFamily: "Brandon",
                                  fontSize: 16,
                                  fontWeight: FontWeight.w300,
                                  color: Colors.grey[400],
                                ),
                              ),
                            ),
                          );
                        },
                      )
                    : sadapay
                            .where((bank) => bank.username
                                .toLowerCase()
                                .contains(searchAccountName.text.toLowerCase()))
                            .isEmpty
                        ? const ListTile(
                            // Show a message when no results match the search
                            title: Text(
                              "No matching banks found",
                              style: TextStyle(
                                fontFamily: "Brandon",
                                fontSize: 16,
                                fontWeight: FontWeight.w500,
                                color: Colors.black,
                              ),
                            ),
                          )
                        : ListView.builder(
                            itemCount: sadapay.length,
                            itemBuilder: (context, index) {
                              // Only display matching banks in the list
                              if (sadapay[index]
                                  .username
                                  .toLowerCase()
                                  .contains(
                                      searchAccountName.text.toLowerCase())) {
                                return ListTile(
                                  leading: CircleAvatar(
                                    backgroundColor: Colors.white,
                                    child: Image.asset(
                                        Myimages.sadapaycolouredlogo),
                                  ),
                                  title: Text(
                                    sadapay[index].username,
                                    style: const TextStyle(
                                      fontFamily: "Brandon",
                                      fontSize: 16,
                                      fontWeight: FontWeight.w500,
                                      color: Colors.black,
                                    ),
                                  ),
                                  subtitle: Text(
                                    "SadaPay *${getLast4digit(index)}",
                                    style: TextStyle(
                                      fontFamily: "Brandon",
                                      fontSize: 16,
                                      fontWeight: FontWeight.w300,
                                      color: Colors.grey[400],
                                    ),
                                  ),
                                );
                              } else {
                                return Container(); // Empty container for non-matching items
                              }
                            },
                          ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
