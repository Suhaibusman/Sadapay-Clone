import 'package:flutter/material.dart';
import 'package:sadapayclone/constants/colors.dart';
import 'package:sadapayclone/widgets/BottomNavBar/navbar.dart';

class MoreScreen extends StatefulWidget {
  const MoreScreen({super.key});

  @override
  State<MoreScreen> createState() => _MoreScreenState();
}

class _MoreScreenState extends State<MoreScreen> {
  @override
  Widget build(BuildContext context) {
    return  SafeArea(
      child: Scaffold(
    
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(20),
            child: Column(
              children: [
                 Container(
                  height: 70,
                    decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20) ,
                    color: Colors.white,
                  ),
                  
                   child: Center(
                     child: ListTile(
                      leading: CircleAvatar(
                        backgroundColor: MyColors.greenColor.withOpacity(0.2),
                        child: const Icon(Icons.person ,color: MyColors.greenColor,),
                      ),
                      title: const Text("Muhammad Suhaib" , style: TextStyle(
                    fontFamily: "Brandon" ,
                    fontSize: 18,
                    fontWeight: FontWeight.w500,
                    color: Colors.black
                  ),),
                      
                                 ),
                   ),
                 ),
                 const SizedBox(height:30),
                Container(
                  
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20) ,
                    color: Colors.white,
                  ),
                child:    Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                     Padding(
                      padding: const EdgeInsets.all(20),
                      child: Text("Rewards", style: TextStyle(
                    fontFamily: "Brandon" ,
                    fontSize: 18,
                    fontWeight: FontWeight.w500,
                    color: Colors.grey[600]
                  ),),
                    ),
                    ListTile(
                      leading: CircleAvatar(
                         backgroundColor: MyColors.pinkColor.withOpacity(0.2),
                        child: const Icon(Icons.emoji_objects ,color: Colors.amber,),
                      ),
                      title: const Text("Golden tickets", style: TextStyle(
                    fontFamily: "Brandon" ,
                    fontSize: 18,
                    fontWeight: FontWeight.w500,
                    color: Colors.black
                  ),),
                       trailing: const Icon(Icons.arrow_forward_ios),
                    ),
                     ListTile(
                  leading: CircleAvatar(
                     backgroundColor: MyColors.pinkColor.withOpacity(0.2),
                        child: const Icon(Icons.share ,color: MyColors.pinkColor,),
                  ),
                  title: const Text("Invite Friends to SadaPay", style: TextStyle(
                    fontFamily: "Brandon" ,
                    fontSize: 18,
                    fontWeight: FontWeight.w500,
                    color: Colors.black
                  ),),
                  trailing: const Icon(Icons.arrow_forward_ios),
                ),
                  ],
                ),
                ),
                const SizedBox(height:30),
                Container(
                  height: 70,
                    decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20) ,
                    color: Colors.white,
                  ),
                  
                   child: Center(
                     child: ListTile(
                      leading: CircleAvatar(
                        backgroundColor: MyColors.pinkColor.withOpacity(0.2),
                        child: const Icon(Icons.chat_rounded ,color: MyColors.pinkColor,),
                      ),
                      title: const Text("Chat with support", style: TextStyle(
                    fontFamily: "Brandon" ,
                    fontSize: 18,
                    fontWeight: FontWeight.w500,
                    color: Colors.black
                  ),),
                      
                                 ),
                   ),
                 ),
                 const SizedBox(height:30),
                  Container(
                  
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20) ,
                    color: Colors.white,
                  ),
                child:    Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                      Padding(
                      padding: const EdgeInsets.all(20),
                      child: Text("Info", style: TextStyle(
                    fontFamily: "Brandon" ,
                    fontSize: 18,
                    fontWeight: FontWeight.w500,
                    color: Colors.grey[600]
                  ),),
                    ),
                    ListTile(
                      leading: CircleAvatar(
                         backgroundColor: MyColors.pinkColor.withOpacity(0.2),
                        child: const Icon(Icons.shield_moon_outlined ,color: Colors.amber,),
                      ),
                      title: const Text("Privacy policy", style: TextStyle(
                    fontFamily: "Brandon" ,
                    fontSize: 18,
                    fontWeight: FontWeight.w500,
                    color: Colors.black
                  ),),
                     
                    ),
                    ListTile(
                      leading: CircleAvatar(
                         backgroundColor: MyColors.pinkColor.withOpacity(0.2),
                        child: const Icon(Icons.receipt_long_rounded ,color: Colors.amber,),
                      ),
                      title: const Text("Terms & conditions", style: TextStyle(
                    fontFamily: "Brandon" ,
                    fontSize: 18,
                    fontWeight: FontWeight.w500,
                    color: Colors.black
                  ),),
                     
                    ),
                     ListTile(
                  leading: CircleAvatar(
                     backgroundColor: MyColors.pinkColor.withOpacity(0.2),
                        child: const Icon(Icons.schedule ,color: MyColors.pinkColor,),
                  ),
                  title: const Text("Schedule of charges", style: TextStyle(
                    fontFamily: "Brandon" ,
                    fontSize: 18,
                    fontWeight: FontWeight.w500,
                    color: Colors.black
                  ),),
                 
                ),
                  ],
                ),
                ),
                const SizedBox(height:30),
                Container(
                  height: 70,
                    decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20) ,
                    color: Colors.white,
                  ),
                  
                   child: Center(
                     child: ListTile(
                      leading: CircleAvatar(
                        backgroundColor: MyColors.pinkColor.withOpacity(0.2),
                        child: const Icon(Icons.chat_rounded ,color: MyColors.pinkColor,),
                      ),
                      title: const Text("Manage devices", style: TextStyle(
                    fontFamily: "Brandon" ,
                    fontSize: 18,
                    fontWeight: FontWeight.w500,
                    color: Colors.black
                  ),),
                       trailing: const Icon(Icons.arrow_forward_ios_outlined),
                                 ),
                   ),
                 ),
                 const SizedBox(height:30),
                Container(
                  height: 70,
                    decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20) ,
                    color: Colors.white,
                  ),
                  
                   child: Center(
                     child: ListTile(
                      leading: CircleAvatar(
                        backgroundColor: MyColors.pinkColor.withOpacity(0.2),
                        child: const Icon(Icons.logout ,color: MyColors.pinkColor,),
                      ),
                      title: const Text("Log out", style: TextStyle(
                    fontFamily: "Brandon" ,
                    fontSize: 18,
                    fontWeight: FontWeight.w500,
                    color: Colors.black
                  ),),
                 
                                 ),
                   ),
                 ),
                  const SizedBox(height:20),
                 const Text("Sadapay clone by Muhammad Suhaib" , style: TextStyle(
                    fontFamily: "Brandon" ,
                    fontSize: 20,
                    fontWeight: FontWeight.w500,
                    color: Colors.black
                  ),),
                      const SizedBox(height:20),
                 const Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [Text("Call us at ", style: TextStyle(
                    fontFamily: "Brandon" ,
                    fontSize: 20,
                    fontWeight: FontWeight.w500,
                    color: Colors.black
                  ),),
                  Text("0311-2136120" , style: TextStyle(
                    fontFamily: "Brandon" ,
                    fontSize: 20,
                    fontWeight: FontWeight.w500,
                    color:MyColors.pinkColor
                  ),),
                  ],
                 )
              ],
            ),
          ),
        ),
        bottomNavigationBar: const NavBar(page: 2),
      ),
    );
  }
}