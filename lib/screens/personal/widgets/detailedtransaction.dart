import 'package:flutter/material.dart';
import 'package:sadapayclone/constants/colors.dart';
import 'package:sadapayclone/constants/images.dart';
import 'package:sadapayclone/data/transaction_record.dart';

class DetailedTransactionPage extends StatefulWidget {
  const DetailedTransactionPage({
    Key? key,
    required this.detailedTransaction,
  }) : super(key: key);

  final TransactionPart detailedTransaction;

  @override
  State<DetailedTransactionPage> createState() =>
      _DetailedTransactionPageState();
}

class _DetailedTransactionPageState extends State<DetailedTransactionPage> {
  Color getBackgroundColor() {
    return widget.detailedTransaction.isSent
        ? MyColors.pinkColor
        : MyColors.greenColor;
  }

  Widget getTitle() {
    return Center(
      child: Text(
        widget.detailedTransaction.isSent ? "Money Sent" : "Money Received",
        style: const TextStyle(
          fontFamily: "Brandon",
          fontSize: 16,
          fontWeight: FontWeight.bold,
        ),
      ),
    );
  }

  Widget getTransactionIcon() {
    return Center(
      child: ClipRRect(
        borderRadius: BorderRadius.circular(
          widget.detailedTransaction.isSent ? 10 : 20,
        ),
        child: Container(
          color: Colors.white,
          child: Image.asset(
            widget.detailedTransaction.isSent
                ? Myimages.sendicon
                : Myimages.recieveicon,
            height: 100,
            width: 100,
          ),
        ),
      ),
    );
  }

  Widget getAmount() {
    final amountText = widget.detailedTransaction.isSent
        ? "Rs. ${widget.detailedTransaction.amount.toString()}"
        : "+ Rs. ${widget.detailedTransaction.amount.toString()}";

    return Text(
      amountText,
      style: const TextStyle(
        fontFamily: "Brandon",
        fontSize: 35,
        fontWeight: FontWeight.bold,
        color: Colors.white,
      ),
    );
  }

  Widget buildTransactionInfo() {
    return Container(
      height: MediaQuery.of(context).size.height * 0.47,
      width: MediaQuery.of(context).size.width,
      decoration: BoxDecoration(
        color: getBackgroundColor(),
        borderRadius: const BorderRadius.only(
          bottomLeft: Radius.circular(30.0),
          bottomRight: Radius.circular(30.0),
        ),
      ),
      child: Padding(
        padding: const EdgeInsets.only(left: 20, right: 20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Row(
              children: [
                IconButton(
                  onPressed: () => Navigator.pop(context),
                  icon: const Icon(Icons.arrow_back_ios),
                ),
                getTitle(),
              ],
            ),
            getTransactionIcon(),
            const SizedBox(height: 40,),
            getAmount(),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Text(
                  "From ",
                  style: TextStyle(
                    fontFamily: "Brandon",
                    fontSize: 18,
                    fontWeight: FontWeight.normal,
                    color: Colors.white,
                  ),
                ),
                const SizedBox(height: 20,),
                Text(
                  widget.detailedTransaction.sendername,
                  style: const TextStyle(
                    fontFamily: "Brandon",
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  ),
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Text(
                  "To ",
                  style: TextStyle(
                    fontFamily: "Brandon",
                    fontSize: 18,
                    fontWeight: FontWeight.normal,
                    color: Colors.white,
                  ),
                ),
                Text(
                  widget.detailedTransaction.recievername,
                  style: const TextStyle(
                    fontFamily: "Brandon",
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  ),
                ),
              ],
            ),
            const SizedBox(height: 10,),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "${widget.detailedTransaction.transactiondate}, ",
                  style: const TextStyle(
                    fontFamily: "Brandon",
                    fontSize: 18,
                    fontWeight: FontWeight.normal,
                    color: Colors.white,
                  ),
                ),
                Text(
                  widget.detailedTransaction.transactiontime,
                  style: const TextStyle(
                    fontFamily: "Brandon",
                    fontSize: 18,
                    fontWeight: FontWeight.normal,
                    color: Colors.white,
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }

  Widget buildSenderReceiverInfo() {
    return Padding(
      padding: const EdgeInsets.all(20),
      child: Container(
        height: MediaQuery.of(context).size.height * 0.32,
        width: MediaQuery.of(context).size.width,
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(20),
        ),
        child: Padding(
          padding: const EdgeInsets.all(20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text(
                "From",
                style: TextStyle(
                  fontFamily: "Brandon",
                  fontSize: 16,
                  fontWeight: FontWeight.normal,
                  color: Colors.grey,
                ),
              ),
              Text(
                widget.detailedTransaction.senderbankname,
                style: const TextStyle(
                  fontFamily: "Brandon",
                  fontSize: 16,
                  fontWeight: FontWeight.normal,
                ),
              ),
              Text(
                widget.detailedTransaction.sendernumber,
                style: const TextStyle(
                  fontFamily: "Brandon",
                  fontSize: 16,
                  fontWeight: FontWeight.normal,
                ),
              ),
              const SizedBox(height: 20,),
              const Text(
                "To",
                style: TextStyle(
                  fontFamily: "Brandon",
                  fontSize: 16,
                  fontWeight: FontWeight.normal,
                  color: Colors.grey,
                ),
              ),
              Text(
                widget.detailedTransaction.recieverbankname,
                style: const TextStyle(
                  fontFamily: "Brandon",
                  fontSize: 16,
                  fontWeight: FontWeight.normal,
                ),
              ),
              Text(
                widget.detailedTransaction.recievernumber,
                style: const TextStyle(
                  fontFamily: "Brandon",
                  fontSize: 16,
                  fontWeight: FontWeight.normal,
                ),
              ),
              const Text(
                "Reference number",
                style: TextStyle(
                  fontFamily: "Brandon",
                  fontSize: 16,
                  fontWeight: FontWeight.normal,
                  color: Colors.grey,
                ),
              ),
              Text(
                widget.detailedTransaction.refrencenumber.toString(),
                style: const TextStyle(
                  fontFamily: "Brandon",
                  fontSize: 16,
                  fontWeight: FontWeight.normal,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget buildServiceFee() {
    return Padding(
      padding: const EdgeInsets.only(left: 20, right: 20,bottom: 20),
      child: Container(
        // height: MediaQuery.of(context).size.height * 0.2,
        width: MediaQuery.of(context).size.width,
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(20),
        ),
        child: Padding(
          padding: const EdgeInsets.all(20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text(
                "Service fee + Tax",
                style: TextStyle(
                  fontFamily: "Brandon",
                  fontSize: 16,
                  fontWeight: FontWeight.normal,
                  color: Colors.grey,
                ),
              ),
              Text(
                "Rs. ${widget.detailedTransaction.servicecharges.toString()} 🎉",
                style: const TextStyle(
                  fontFamily: "Brandon",
                  fontSize: 16,
                  fontWeight: FontWeight.normal,
                  color: MyColors.greenColor,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          child: Column(
            children: [
              buildTransactionInfo(),
              buildSenderReceiverInfo(),
              buildServiceFee(),
            ],
          ),
        ),
      ),
    );
  }
}
