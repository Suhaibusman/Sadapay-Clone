import 'package:sadapayclone/constants/images.dart';

class BalancePart{
  String image;

  String phonenumber;
  
BalancePart({
  required this.image,
   
  
 
  required this.phonenumber,
  
});



static List<BalancePart> getBalancePart(){
  List<BalancePart> balance=[];

 balance.add(
  BalancePart(image: Myimages.zonglogo, phonenumber: "03112136120")
 );
 return balance;
}

}