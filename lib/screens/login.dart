
import 'package:flutter/material.dart';
import 'package:market_application/widgets/Button.dart';
import 'package:market_application/widgets/email_login.dart';
import 'package:market_application/widgets/forget.dart';
import 'package:market_application/widgets/password.dart';

class Login extends StatelessWidget {

  // bool forget = false;
  final Function(int) authent;

  const Login({
    super.key,
    required this.authent,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Image.asset("assets/images/Group.png", scale: .8,),
          centerTitle: true,
          toolbarHeight: 200,
        ),

        body: Center(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [

                  Padding(
                    padding: EdgeInsetsGeometry.symmetric(horizontal: 30) ,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text("Loging",
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 26,
                          fontWeight: FontWeight(600),
                        ),),
                        
                        SizedBox(height: 10,),

                        Text("Enter your emails and password",
                        style: TextStyle(
                          color: Color(0xff7C7C7C),
                          fontSize: 16,
                          fontWeight: FontWeight(400),
                        ),),

                        SizedBox(height: 30,),
                      
                      ],
                    ),
                  ),
                
                  EmailLogin(),

                  SizedBox(height: 20,),
                
                  Password(),

                  SizedBox(height: 10,),

                  Forget(),
                
                  SizedBox(height: 20,),

                  Button("Login"),

                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text("Don’t have an account?",
                        style: TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight(600),
                        ),),

                        TextButton(
                          onPressed: () {
                            authent(1);
                          },
                          child: const Text(
                            "Signup",
                            style: TextStyle(
                              fontSize: 14,
                              fontWeight: FontWeight.w600,
                              color: Colors.green,
                            ),
                          ),
                        ),
                      ],
                    ),
                  
                          
                ],
              ),
          
          
          ),
        );
  }
  
}