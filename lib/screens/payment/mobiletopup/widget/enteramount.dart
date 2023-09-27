import 'package:flutter/material.dart';

class EnterAmountScreen extends StatefulWidget {
    final String phoneNumber;
  final String networkImageAsset;
  final String networkProvider;
  const EnterAmountScreen({super.key, required this.phoneNumber, required this.networkImageAsset, required this.networkProvider});

  @override
  State<EnterAmountScreen> createState() => _EnterAmountScreenState();
}

class _EnterAmountScreenState extends State<EnterAmountScreen> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold();
  }
}