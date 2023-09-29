import 'package:flutter/material.dart';
import 'package:sadapayclone/data/banklist.dart';

class AllBankList extends StatefulWidget {
  const AllBankList({super.key});

  @override
  State<AllBankList> createState() => _AllBankListState();
}

class _AllBankListState extends State<AllBankList> {
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
        // backgroundColor: Colors.white,
        body: Padding(
          padding: const EdgeInsets.all(20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // const SizedBox(height: 20,),
              IconButton(
                  onPressed: () => Navigator.pop(context),
                  icon: const Icon(Icons.arrow_back_ios)),
              const SizedBox(
                height: 10,
              ),
              const Text(
                "Choose institution",
                style: TextStyle(
                    fontFamily: "Brandon",
                    fontSize: 25,
                    fontWeight: FontWeight.w400,
                    color: Colors.black),
              ),
              const SizedBox(
                height: 20,
              ),
            SizedBox(
                  height: 45,
                  child: TextField(
                    
                    keyboardType: TextInputType.number,
                  
                    // controller: enteramount,
                    // onChanged: (value) {
                    //   setState(() {
                    //     errorMessage = null;
                    //   });
                    // },
                    decoration: InputDecoration(
                      prefixIcon: const Icon(Icons.search ,color: Colors.grey,),
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

                 child: ListView.separated(
                  separatorBuilder: (context, index) => SizedBox(height: 10,),
                  itemCount: banklist.length,
                  itemBuilder: (context, index) {
                   return ListTile(
                    leading: CircleAvatar(
                 
                      backgroundColor: Colors.white,
                      child: Image.asset(banklist[index].image),
                 
                    ),
                    title: Text(banklist[index].bankname , style: const TextStyle(
                  fontFamily: "Brandon" ,
                  fontSize: 16,
                  fontWeight: FontWeight.w500,
                  color: Colors.black
                               ),),
                   );
                 },),
               )
            ],
          ),
        ),
      ),
    );
  }
}