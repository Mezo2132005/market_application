
import 'package:flutter/material.dart';

class Button extends StatelessWidget {
  
  String data = "Login";

  Button(this.data, {super.key});
  
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(30),
      child: Container(
        decoration: BoxDecoration(
          color: Color(0xff53B175),
          borderRadius: BorderRadiusGeometry.circular(19)
        ),
        width: double.infinity,
        height: 67,
        child: Center(child: Text(data,
        style: TextStyle(fontSize: 18, fontWeight: FontWeight(600), color: Colors.white),)),
      ),
    );
  }
}