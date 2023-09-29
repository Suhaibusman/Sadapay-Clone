import 'package:sadapayclone/constants/images.dart';

class BillingPart{
  String image;

  String billName;
  
BillingPart({
  required this.image,
   
  
 
  required this.billName,
  
});



static List<BillingPart> getBillingPart(){
  List<BillingPart> billslist=[];

 billslist.add(
  BillingPart(image: Myimages.kelogo, billName: "K-Electric")
 );
  billslist.add(
  BillingPart(image: Myimages.ssgclogo, billName: "SSGC")
 );
 return billslist;
}

}