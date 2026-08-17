import 'package:flutter/material.dart';

class Forget extends StatefulWidget {
  const Forget({super.key});

  @override
  State<Forget> createState() => _ForgetState();
}

class _ForgetState extends State<Forget> {
  bool forget = false;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.end,
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 30),
          child: TextButton(
            onPressed: () {
              setState(() {
                forget = true;
              });           
              },
            
            onFocusChange: (value) {
              setState(() {
                forget = value;
              });      
            },

            onHover: (value) {
              setState(() {
                forget = value;
              });
            },

            child: Text(
              "Forgot Password?",
              style: TextStyle(
                color: Colors.black,
                decoration: forget
                    ? TextDecoration.underline
                    : TextDecoration.none,
                fontSize: 14,
                fontWeight: FontWeight.w400,
              ),
            ),
          ),
        ),
      ],
    );
  }
}