class TransactionPart{
  String transactiondate;
  int amount;
  String transactiontime;
  String recievername;
  String sendername;
  String recieverbankname;
  String senderbankname;
  String sendernumber;
  String recievernumber;
  int  refrencenumber;
  int servicecharges;
  bool isRecieved;
  bool isSent;
TransactionPart({
  required this.transactiondate,
    required this.senderbankname,
   required this.sendername,
  required this.amount,
  required this.recievername,
  required this.transactiontime,
  required this.recieverbankname,
   required this.sendernumber,
   required this.recievernumber,
   required this.refrencenumber,
  required this.servicecharges,
  required this.isRecieved,
  required this.isSent
});



static List<TransactionPart> getTransactionPart(){
  List<TransactionPart> transaction=[];

  transaction.add(

    TransactionPart(transactiondate: "Sep 21", senderbankname: "Sadapay", sendername: "Muhammad Suhaib Usman", amount: 500, recievername: "Muhammad Suhaib Usman", transactiontime: "3:26 AM", recieverbankname: "NayaPay", sendernumber: "3112136120", recievernumber: "3112136120", refrencenumber: 920065, servicecharges: 0, isRecieved: false , isSent: true)
  );
  transaction.add(

    TransactionPart(transactiondate: "Sep 21", senderbankname: "EasyPaisa", sendername: "Muhammad Suhaib Usman", amount: 1500, recievername: "Muhammad Suhaib Usman", transactiontime: "3:26 AM", recieverbankname: "NayaPay", sendernumber: "3112136120", recievernumber: "3112136120", refrencenumber: 920065, servicecharges: 0, isRecieved: true , isSent: false)
  );
     transaction.add(

    TransactionPart(transactiondate: "Sep 21", senderbankname: "Sadapay", sendername: "Muhammad Babar Waseem", amount: 2500, recievername: "Muhammad Suhaib Usman", transactiontime: "5:26 PM", recieverbankname: "SadaPay", sendernumber: "3313262895", recievernumber: "3112136120", refrencenumber: 920065, servicecharges: 0, isRecieved: true , isSent: false)
  );
  transaction.add(

    TransactionPart(transactiondate: "Sep 20", senderbankname: "Sadapay", sendername: "Muhammad Suhaib Usman", amount: 3500, recievername: "Muhammad Suhaib Usman", transactiontime: "5:20 PM", recieverbankname: "NayaPay", sendernumber: "3112136120", recievernumber: "3112136120", refrencenumber: 920065, servicecharges: 0, isRecieved: false , isSent: true)
  );
    transaction.add(

    TransactionPart(transactiondate: "Sep 18", senderbankname: "Sadapay", sendername: "Muhammad Suhaib Usman", amount: 500, recievername: "Muhammad Suhaib Usman", transactiontime: "3:26 AM", recieverbankname: "NayaPay", sendernumber: "3112136120", recievernumber: "3112136120", refrencenumber: 920065, servicecharges: 0, isRecieved: true , isSent: false)
  );
  transaction.add(

    TransactionPart(transactiondate: "Sep 16", senderbankname: "Sadapay", sendername: "Muhammad Suhaib Usman", amount: 1500, recievername: "Muhammad Suhaib Usman", transactiontime: "3:26 AM", recieverbankname: "NayaPay", sendernumber: "3112136120", recievernumber: "3112136120", refrencenumber: 920065, servicecharges: 0, isRecieved: false , isSent: true)
  );
     transaction.add(

    TransactionPart(transactiondate: "Sep 15", senderbankname: "JazzCash", sendername: "Muhammad Suhaib Usman", amount: 2500, recievername: "Muhammad Suhaib Usman", transactiontime: "3:26 AM", recieverbankname: "SadaPay", sendernumber: "3112136120", recievernumber: "3112136120", refrencenumber: 920065, servicecharges: 0, isRecieved: true , isSent: false)
  );
  transaction.add(

    TransactionPart(transactiondate: "Aug 15", senderbankname: "EasyPaisa", sendername: "Muhammad Suhaib Usman", amount: 3500, recievername: "Muhammad Suhaib Usman", transactiontime: "3:26 AM", recieverbankname: "Sadapay", sendernumber: "3112136120", recievernumber: "3112136120", refrencenumber: 920065, servicecharges: 0, isRecieved: true , isSent: false)
  ); 
 return transaction;
}

}