import 'package:sadapayclone/constants/images.dart';

class BankPart{
  String image;

  String bankname;
  
BankPart({
  required this.image,
   
  
 
  required this.bankname,
  
});



static List<BankPart> getBankPart(){
  List<BankPart> banklist=[];

 banklist.add(
  BankPart(image: Myimages.sadapaycolouredlogo, bankname: "SadaPay")
 );
  banklist.add(
  BankPart(image: Myimages.nayapaylogo, bankname: "NayaPay")
 );
  banklist.add(
  BankPart(image: Myimages.easypaisalogo, bankname: "EasyPaisa")
 );
  banklist.add(
  BankPart(image: Myimages.jazzcashlogo, bankname: "JazzCash")
 );
 return banklist;
}

}