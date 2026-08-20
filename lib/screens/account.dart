import 'package:flutter/material.dart';

class Account extends StatelessWidget {
  const Account({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Account",style: TextStyle(fontSize: 32,fontWeight: FontWeight.bold),),
        centerTitle: true,
      ),
    );
  }
}