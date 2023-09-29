import 'package:flutter/material.dart';
import 'package:sadapayclone/data/banklist.dart';

class AllBankList extends StatefulWidget {
  const AllBankList({super.key});

  @override
  State<AllBankList> createState() => _AllBankListState();
}

class _AllBankListState extends State<AllBankList> {
  final TextEditingController searchBankname = TextEditingController();
  List<BankPart> banklist = [];

  void _getBankPart() {
    setState(() {
      banklist = BankPart.getBankPart();
    });
  }


  @override
  Widget build(BuildContext context) {
    _getBankPart();
    return SafeArea(
      child: Scaffold(
        body: Padding(
          padding: const EdgeInsets.all(20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              IconButton(
                onPressed: () => Navigator.pop(context),
                icon: const Icon(Icons.arrow_back_ios),
              ),
              const SizedBox(
                height: 10,
              ),
              const Text(
                "Choose institution",
                style: TextStyle(
                  fontFamily: "Brandon",
                  fontSize: 25,
                  fontWeight: FontWeight.w400,
                  color: Colors.black,
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              SizedBox(
                height: 45,
                child: TextField(
                  keyboardType: TextInputType.text,
                  controller: searchBankname,
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
              Expanded(
                child: searchBankname.text.isEmpty
                    ? ListView.builder(
                        itemCount: banklist.length,
                        itemBuilder: (context, index) {
                          return ListTile(
                            leading: CircleAvatar(
                              backgroundColor: Colors.white,
                              child: Image.asset(banklist[index].image),
                            ),
                            title: Text(
                              banklist[index].bankname,
                              style: const TextStyle(
                                fontFamily: "Brandon",
                                fontSize: 16,
                                fontWeight: FontWeight.w500,
                                color: Colors.black,
                              ),
                            ),
                          );
                        },
                      )
                    : banklist
                        .where((bank) => bank.bankname
                            .toLowerCase()
                            .contains(searchBankname.text.toLowerCase()))
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
                            itemCount: banklist.length,
                            itemBuilder: (context, index) {
                              // Only display matching banks in the list
                              if (banklist[index]
                                  .bankname
                                  .toLowerCase()
                                  .contains(searchBankname.text.toLowerCase())) {
                                return ListTile(
                                  leading: CircleAvatar(
                                    backgroundColor: Colors.white,
                                    child: Image.asset(banklist[index].image),
                                  ),
                                  title: Text(
                                    banklist[index].bankname,
                                    style: const TextStyle(
                                      fontFamily: "Brandon",
                                      fontSize: 16,
                                      fontWeight: FontWeight.w500,
                                      color: Colors.black,
                                    ),
                                  ),
                                );
                              } else {
                                return Container(); // Empty container for non-matching items
                              }
                            },
                          ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
