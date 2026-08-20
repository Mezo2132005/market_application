import 'package:flutter/material.dart';

class Cart extends StatelessWidget {
  const Cart({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Cart",style: TextStyle(fontSize: 32,fontWeight: FontWeight.bold),),
        centerTitle: true,
      ),
    );
  }
}