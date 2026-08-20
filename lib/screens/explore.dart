import 'package:flutter/material.dart';

class Explore extends StatelessWidget {
  const Explore({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Explore",style: TextStyle(fontSize: 32,fontWeight: FontWeight.bold),),
        centerTitle: true,
      ),
    );
  }
}