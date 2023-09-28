import 'package:flutter/material.dart';
import 'package:sadapayclone/constants/colors.dart';
import 'package:sadapayclone/screens/more/morescreen.dart';
import 'package:sadapayclone/screens/payment/Bills%20and%20utilities/bills_screen.dart';
import 'package:sadapayclone/screens/payment/Money%20requests/moneyrequest.dart';
import 'package:sadapayclone/screens/payment/mobiletopup/mobiletopup.dart';
import 'package:sadapayclone/screens/personal/personalscreen.dart';

class NavBar extends StatefulWidget {
  final int page;
  const NavBar({super.key, required this.page});

  @override
  State<NavBar> createState() => _NavBarState();
}

class _NavBarState extends State<NavBar> {
  final GlobalKey<ScaffoldState> scaffoldKey = GlobalKey<ScaffoldState>();
  int _page = 0; // Use a private variable to track the current page

  @override
  void initState() {
    super.initState();
    _page = widget.page;
  }

    bottomdata(){
       return Container(
      height: MediaQuery.of(context).size.height * 0.5,
      decoration: const BoxDecoration(
        borderRadius: BorderRadius.only(
          topRight: Radius.circular(40.0),
          topLeft: Radius.circular(40.0),
        ),
        color: Colors.white,
      ),
      // Add your content inside the rounded container
      child:  Padding(
        padding: const EdgeInsets.all(20 ,),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // const SizedBox(height: 20,),
            const Text("Payments" , style: TextStyle(
                  fontFamily: "Brandon" ,
                  fontSize: 35,
                  fontWeight: FontWeight.w500,
                  color: Colors.black
                ),),
                  const SizedBox(height: 20,),
            InkWell(
              onTap: () {
              setState(() {
                 Navigator.push(context, MaterialPageRoute(builder: (context) => const MobileTopUp(),));
              });
              },
              child: Row(
                children: [
                  Container(
                    height: 60,
                    width: 60,
                    decoration: BoxDecoration(
                      borderRadius: const BorderRadius.all(Radius.circular(20)), 
                      color: MyColors.pinkColor.withOpacity(0.2)
                    ),
                    child:  const Icon(Icons.send_to_mobile ,color: MyColors.pinkColor, size: 40,)),
                Padding(
                padding: const EdgeInsets.only(left: 20),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                          const Text("Mobile top up" , style: TextStyle(
                      fontFamily: "Brandon" ,
                      fontSize: 20,
                      fontWeight: FontWeight.w500,
                      color: Colors.black
                    ),),
                       Text("Instantly top up your mobile." , style: TextStyle(
                      fontFamily: "Brandon" ,
                      fontSize: 16,
                      fontWeight: FontWeight.w500,
                      color: Colors.grey[600]
                    ),),
                    ],
                  ),
                )
                
                ],
              ),
            ),
            const Divider(
              thickness: 2,
            ),
            const SizedBox(height: 10,),
                 InkWell(
                  onTap: () {
              setState(() {
                 Navigator.push(context, MaterialPageRoute(builder: (context) => const BillsScreen(),));
              });
              },
                   child: InkWell(

                     child: Row(
                                 children: [
                                   Container(
                      height: 60,
                      width: 60,
                      decoration: BoxDecoration(
                        borderRadius: const BorderRadius.all(Radius.circular(20)), 
                        color: MyColors.pinkColor.withOpacity(0.2)
                      ),
                      child:  const Icon(Icons.receipt_sharp ,color: MyColors.pinkColor, size: 40,)),
                                 Padding(
                                   padding: const EdgeInsets.only(left:20),
                                   child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                            const Text("Bills & utilities" , style: TextStyle(
                        fontFamily: "Brandon" ,
                        fontSize: 20,
                        fontWeight: FontWeight.w500,
                        color: Colors.black
                      ),),
                         Text("Pay for your utilities." , style: TextStyle(
                        fontFamily: "Brandon" ,
                        fontSize: 16,
                        fontWeight: FontWeight.w500,
                        color: Colors.grey[600]
                      ),),
                      ],
                                   ),
                                 )
                                 
                                 ],
                               ),
                   ),
                 ),
            const SizedBox(height: 10,),
            const Divider(
              thickness: 2,
            ),
                 InkWell(
                  onTap: () => setState(() {
                    Navigator.push(context, MaterialPageRoute(builder: (context) => const MoneyRequestScreen(),));
                  }),
                   child: Row(
                               children: [
                                 Container(
                    height: 60,
                    width: 60,
                    decoration: BoxDecoration(
                      borderRadius: const BorderRadius.all(Radius.circular(20)), 
                      color: MyColors.pinkColor.withOpacity(0.2)
                    ),
                    child:  const Icon(Icons.remove_from_queue_rounded ,color: MyColors.pinkColor, size: 40,)),
                               Padding(
                                 padding: const EdgeInsets.only(left: 20),
                                 child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                          const Text("Money requests" , style: TextStyle(
                      fontFamily: "Brandon" ,
                      fontSize: 20,
                      fontWeight: FontWeight.w500,
                      color: Colors.black
                    ),),
                       Text("Review pending money requests." , style: TextStyle(
                      fontFamily: "Brandon" ,
                      fontSize: 16,
                      fontWeight: FontWeight.w500,
                      color: Colors.grey[600]
                    ),),
                    ],
                                 ),
                               )
                               
                               ],
                             ),
                 ),
           
          ],
        ),
      )
    );
    }


  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      selectedLabelStyle: const TextStyle(color: MyColors.pinkColor),
      selectedIconTheme: const IconThemeData(color: MyColors.pinkColor),
      items: const [
        BottomNavigationBarItem(icon: Icon(Icons.home_filled), label: "Personal"),
        BottomNavigationBarItem(icon: Icon(Icons.payment_outlined), label: "Payments"),
        BottomNavigationBarItem(icon: Icon(Icons.more_vert_sharp), label: "More"),
      ],
      currentIndex: _page, // Use the private variable here
      onTap: (pageindex) async {
        setState(() {
          _page = pageindex; // Update the private variable with the selected index
        });

        if (_page == 0) {
        await  Navigator.push(context, MaterialPageRoute(builder: (context) => const PersonalScreen()));
        } else if (_page == 1) {
          // Show the bottom sheet when "Payments" tab is selected
        showModalBottomSheet<void>(
         
          barrierColor: Colors.transparent,
  context: context,
  builder: (context) {
     
    return bottomdata();
  },
);
        } else if (_page == 2) {
         await Navigator.push(context, MaterialPageRoute(builder: (context) => const MoreScreen()));
        }
      },
    );
  }
}
