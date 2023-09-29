import 'package:flutter/material.dart';
import 'package:sadapayclone/constants/colors.dart';
import 'package:sadapayclone/data/amount.dart';
import 'package:sadapayclone/screens/personal/widgets/topcontainer/widgets/carddetails.dart';
import 'package:sadapayclone/screens/personal/widgets/topcontainer/widgets/loadmoney.dart';
import 'package:sadapayclone/screens/personal/widgets/topcontainer/widgets/sendmoney/sendmoney.dart';


class TopContainer extends StatefulWidget {
  const TopContainer({super.key});

  @override
  State<TopContainer> createState() => _TopContainerState();
}

class _TopContainerState extends State<TopContainer> {
  @override
  Widget build(BuildContext context) {
    return         Row(
                children: [
                  InkWell(
                    onTap: () => Navigator.push(context, MaterialPageRoute(builder: (context) => const CardDetails(),)),
                    child: Container(
                      height: MediaQuery.sizeOf(context).height*0.3,
                      width: MediaQuery.sizeOf(context).width*0.5,
                      decoration: BoxDecoration(
                        color: MyColors.greenColor,
                        borderRadius: BorderRadius.circular(20)
                      ),
                      child: Padding(
                        padding: const EdgeInsets.all(20),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                          SizedBox(child: Column(
                            children: [
                                const Text("Current Balance", style:  TextStyle(
                                                  fontFamily: "Brandon" ,
                                                  fontSize: 15,
                                                  fontWeight: FontWeight.w200,
                                                  color: Colors.white
                                                )),
                             Text("Rs. ${accountBalance.toString()}", style:  const TextStyle(
                                                  fontFamily: "Brandon" ,
                                                  fontSize: 27,
                                                  fontWeight: FontWeight.bold,
                                                  color: Colors.white
                                                )),    
                            ],
                          ),),
                  
                         Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  Image.asset("assets/images/mastercardicon.png" ,height: 50 ,width: 50,),
                                   const Icon(Icons.arrow_forward_rounded ,color: Colors.white,),  
                                ],
                              )
                                       
                          ],
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 10),
                    child: Column(
                    
                      children: [
                        InkWell(
                          onTap: () {
                            Navigator.push(context, MaterialPageRoute(builder: (context) => const LoadMoney(),));
                          },
                          child: Container(
                                              height: MediaQuery.sizeOf(context).height*0.14,
                                              width: MediaQuery.sizeOf(context).width*0.35,
                                              decoration: BoxDecoration(
                          color: MyColors.blueColor,
                          borderRadius: BorderRadius.circular(20) ,
                          
                                              ),
                                              child:  Padding(
                          padding: const EdgeInsets.all(10),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                             const Icon(Icons.arrow_downward_rounded ,color: Colors.white,),
                              SizedBox(
                                width: MediaQuery.sizeOf(context).height*0.10,
                                child: const Text("Load Money", style:  TextStyle(
                                                fontFamily: "Brandon" ,
                                                fontSize: 20,
                                                fontWeight: FontWeight.w600,
                                                color: Colors.white
                                              )),
                              ),
                            
                            ],
                          ),
                                              ),
                                            ),
                        ),
                    const SizedBox(height: 15,),
                    InkWell(
                      onTap: () => Navigator.push(context, MaterialPageRoute(builder: (context) => const SendMoney(),)),
                      child: Container(
                        height: MediaQuery.sizeOf(context).height*0.14,
                        width: MediaQuery.sizeOf(context).width*0.36,
                        decoration: BoxDecoration(
                          color: MyColors.pinkColor,
                          borderRadius: BorderRadius.circular(20)
                        ), child:  Padding(
                          padding: const EdgeInsets.all(10),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              
                              const Row(
                                mainAxisAlignment: MainAxisAlignment.end,
                                children: [
                                  Icon(Icons.arrow_outward ,color: Colors.white,),
                                ],
                              ),
                              SizedBox(
                                width: MediaQuery.sizeOf(context).height*0.10,
                                child: const Text("Send & Request", style:  TextStyle(
                                                fontFamily: "Brandon" ,
                                                fontSize: 20,
                                                fontWeight: FontWeight.w600,
                                                color: Colors.white
                                              )),
                              )
                            ],
                          ),
                        ),
                      ),
                    ),
                      ],
                    ),
                  )
                ],
              );
  }
}