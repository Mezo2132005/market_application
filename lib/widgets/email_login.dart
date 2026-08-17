
import 'package:flutter/material.dart';

class EmailLogin extends StatelessWidget {

          


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

                onTapOutside: (value){
                  FocusScope.of(context).unfocus();
                },

                decoration: InputDecoration(
                  labelText: "Email",
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