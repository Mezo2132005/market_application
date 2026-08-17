import 'package:flutter/material.dart';

class Password extends StatefulWidget {
  const Password({super.key});

  @override
  State<Password> createState() => _PasswordState();
}

class _PasswordState extends State<Password> {
  bool visible = false;

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

        decoration: InputDecoration(
          suffixIcon: IconButton(
            icon: Icon(
              visible ? visibility[1] : visibility[0],
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