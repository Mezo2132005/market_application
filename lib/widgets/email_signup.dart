
import 'package:flutter/material.dart';

class EmailSignup extends StatefulWidget {

  @override
  State<EmailSignup> createState() => _EmailSignupState();
}

class _EmailSignupState extends State<EmailSignup> {
  String emailError = "";

  @override
  Widget build(BuildContext context) {
            return Padding(
              padding: EdgeInsetsGeometry.symmetric(horizontal: 30),

              child: TextFormField(
                cursorColor: Colors.green,
                

                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.w400,
                ),

                onChanged: (value) {
                  setState(() {
                    if (value.isEmpty) {
                      emailError = "Email is required";
                    } else if (RegExp(r'[A-Z]').hasMatch(value)) {
                      emailError = "Email must not contain capital letters";
                    } else if (!RegExp(
                      r'^[a-z0-9._%+-]+@[a-z0-9.-]+\.[a-z]{2,}$',
                    ).hasMatch(value)) {
                      emailError = "Enter a valid email";
                    } else {
                      emailError = "";
                    }
                  });
                },

                onTapOutside: (value){
                  FocusScope.of(context).unfocus();
                },

                decoration: InputDecoration(
                  labelText: "Email",
                  suffix: emailError == "" ? Icon(Icons.check,color: Colors.green,) : Icon(Icons.close,color: Colors.red,),
                  labelStyle: TextStyle(
                    color: Color(0xff7C7C7C)
                  ),
                  
                  
                  focusedBorder: UnderlineInputBorder(
                    borderSide: BorderSide(
                      color: Colors.black
                      
                    )
                  ),
                  border: UnderlineInputBorder()
                  )
                  
                  
                ),
              );
  }
}