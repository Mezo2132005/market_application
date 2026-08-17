import 'package:flutter/material.dart';

class PasswordSignup extends StatefulWidget {
  const PasswordSignup({super.key});

  @override
  State<PasswordSignup> createState() => _PasswordSignupState();
}

class _PasswordSignupState extends State<PasswordSignup> {
  bool visible = false;
  String? passwordError = "";

  List<IconData> visibility = [
    Icons.visibility_off,
    Icons.visibility,
  ];

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 30),
      child: TextFormField(
        obscureText: !visible,
        cursorColor: Colors.green,

        style: const TextStyle(
          fontSize: 18,
          fontWeight: FontWeight.w400,
        ),

        onTapOutside: (value) {
          FocusScope.of(context).unfocus();
        },
        onChanged: (value) {
          setState(() {
            if (value.length < 6) {
              passwordError = "Password must be at least 6 characters";
            } else if (!RegExp(r'[a-z]').hasMatch(value)) {
              passwordError = "Password must contain a lowercase letter";
            } else if (!RegExp(r'[A-Z]').hasMatch(value)) {
              passwordError = "Password must contain an uppercase letter";
            } else if (!RegExp(r'[0-9]').hasMatch(value)) {
              passwordError = "Password must contain a number";
            } else {
              passwordError = "";
            }
          });
        },

        decoration: InputDecoration(
          errorText: passwordError,
          suffixIcon: IconButton(
            icon: Icon(
              visible ? visibility[1]: visibility[0],color: Colors.black,
            ),
            onPressed: () {
              setState(() {
                visible = !visible;
              });
            },
          ),

          labelText: "Password",

          labelStyle: const TextStyle(
            color: Color(0xff7C7C7C),
          ),

          focusedBorder: const UnderlineInputBorder(
            borderSide: BorderSide(
              color: Colors.black,
            ),
          ),

          border: const UnderlineInputBorder(),
        ),
      ),
    );
  }
}