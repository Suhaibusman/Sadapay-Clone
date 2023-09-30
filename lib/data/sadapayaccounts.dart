

class SadapayAccountPart {
  String username;
String phonenumber;
SadapayAccountPart({
    required this.username,
    required this.phonenumber,
  });

  static List<SadapayAccountPart> getSadapayAccountPart() {
    List<SadapayAccountPart> sadapay = [];
sadapay.add(SadapayAccountPart(username: "Muhammad Shakeeb Usman", phonenumber: "03212216569"));
sadapay.add(SadapayAccountPart(username: "Muhammad Babar Waseem", phonenumber: "03313262895"));
sadapay.add(SadapayAccountPart(username: "Muhammad Anas Jawed", phonenumber: "03310274105"));
sadapay.add(SadapayAccountPart(username: "Muhammad Saad Khan", phonenumber: "03122281324"));
sadapay.add(SadapayAccountPart(username: "Salman khan", phonenumber: "03278286285"));
sadapay.add(SadapayAccountPart(username: "Muhammad  Usman", phonenumber: "03215261656"));
sadapay.add(SadapayAccountPart(username: "Muhammad  Waseem", phonenumber: "03314762895"));
sadapay.add(SadapayAccountPart(username: "Muhammad  Jawed", phonenumber: "03345627405"));
sadapay.add(SadapayAccountPart(username: "Subhan  Mughal", phonenumber: "03122751324"));
sadapay.add(SadapayAccountPart(username: "Huzaifa Ahmed", phonenumber: "03102077679"));

    return sadapay;
  }
}
