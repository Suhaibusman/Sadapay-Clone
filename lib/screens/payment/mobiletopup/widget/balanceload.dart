import 'package:flutter/material.dart';
import 'package:sadapayclone/constants/images.dart';

class BalanceScreen extends StatefulWidget {
  const BalanceScreen({Key? key}) : super(key: key);

  @override
  State<BalanceScreen> createState() => _BalanceScreenState();
}

class _BalanceScreenState extends State<BalanceScreen> {
  final TextEditingController numberTextfield = TextEditingController();

  String phoneNumber = '';
  String networkProvider = '';
  List<dynamic>? networkProviderData; // Change the type to be nullable

  Map<String, List<dynamic>> networkProviderMap = {
    '030': ['Jazz Prepaid', Myimages.jazzlogo],
    '031': ['Zong Prepaid', Myimages.zonglogo],
    '032': ['Warid Prepaid', Myimages.waridlogo],
    '033': ['Ufone Prepaid', Myimages.ufonelogo],
    '034': ['Telenor Prepaid', Myimages.telenorlogo],
    '035': ['SCO Mobile Prepaid', Myimages.scomlogo],
  };

  void searchNetworkProvider(String numberTextfield) {
    if (numberTextfield.length >= 3) {
      String prefix = numberTextfield.substring(0, 3);
      if (networkProviderMap.containsKey(prefix)) {
        setState(() {
          networkProvider = networkProviderMap[prefix]![0];
          networkProviderData = networkProviderMap[prefix]; // Assign the value
        });
        return;
      }
    }
    setState(() {
      networkProvider = 'Unknown';
      networkProviderData = null; // Assign null if no provider is found
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        leading: IconButton(
          onPressed: () => Navigator.pop(context),
          icon: const Icon(Icons.arrow_back_ios, color: Colors.black),
        ),
        title: const Text(
          "Mobile top up",
          style: TextStyle(
            fontFamily: "Brandon",
            color: Colors.black,
          ),
        ),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              "Mobile number",
              style: TextStyle(
                fontFamily: "Brandon",
                fontSize: 16,
                color: Colors.black,
              ),
            ),
            const SizedBox(height: 20,),
            SizedBox(
              height: 45,
              child: TextField(
                controller: numberTextfield,
                onChanged: (value) {
                  setState(() {
                    phoneNumber = value;
                  });
                  searchNetworkProvider(value);
                },
                decoration: InputDecoration(
                  enabledBorder: OutlineInputBorder(
                    borderSide: const BorderSide(
                      width: 2.5,
                      color: Colors.black,
                    ),
                    borderRadius: BorderRadius.circular(50.0),
                  ),
                ),
              ),
            ),
            const SizedBox(height: 20,),
            Container(
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(20)
              ),
              height: 80,
              width: MediaQuery.of(context).size.width,
              child: ListTile(
                leading: CircleAvatar(
                  backgroundColor: Colors.white,
                  backgroundImage: networkProviderData != null
                      ? AssetImage(networkProviderData![1] ,)
                      : const AssetImage(''), // Provide a default image if null
                ),
                title: Text(numberTextfield.text, style: const TextStyle(fontSize: 18)),
                subtitle: Text(networkProvider, style: const TextStyle(fontSize: 18)), // Display the network provider name
              ),
            ),
          ],
        ),
      ),
    );
  }
}
