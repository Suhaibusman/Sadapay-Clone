import 'package:flutter/material.dart';
import 'package:sadapayclone/constants/colors.dart';

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
                  Container(
                    height: MediaQuery.sizeOf(context).height*0.3,
                    width: MediaQuery.sizeOf(context).width*0.5,
                    decoration: BoxDecoration(
                      color: MyColors.greenColor,
                      borderRadius: BorderRadius.circular(20)
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 10),
                    child: Column(
                    
                      children: [
                        Container(
                      height: MediaQuery.sizeOf(context).height*0.14,
                      width: MediaQuery.sizeOf(context).width*0.35,
                      decoration: BoxDecoration(
                        color: MyColors.blueColor,
                        borderRadius: BorderRadius.circular(20)
                      ),
                    ),
                    const SizedBox(height: 15,),
                    Container(
                      height: MediaQuery.sizeOf(context).height*0.14,
                      width: MediaQuery.sizeOf(context).width*0.36,
                      decoration: BoxDecoration(
                        color: MyColors.pinkColor,
                        borderRadius: BorderRadius.circular(20)
                      ),
                    ),
                      ],
                    ),
                  )
                ],
              );
  }
}