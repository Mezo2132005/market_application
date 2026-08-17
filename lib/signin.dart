import 'package:flutter/material.dart';
import 'package:market_application/widgets/Button.dart';
import 'package:market_application/widgets/email_signup.dart';
import 'package:market_application/widgets/password_signup.dart';
import 'package:market_application/widgets/user_name.dart';

class Signin extends StatelessWidget {
  final void Function(int) authent;

  const Signin({
    super.key,
    required this.authent,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Image.asset(
          "assets/images/Group.png",
          scale: .8,
        ),
        centerTitle: true,
        toolbarHeight: 200,
      ),

      body: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 30),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    "Sign Up",
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 26,
                      fontWeight: FontWeight.w600,
                    ),
                  ),

                  const SizedBox(height: 10),

                  const Text(
                    "Enter your credentials to continue",
                    style: TextStyle(
                      color: Color(0xff7C7C7C),
                      fontSize: 16,
                      fontWeight: FontWeight.w400,
                    ),
                  ),

                  const SizedBox(height: 30),
                ],
              ),
            ),

            UserName(),

            const SizedBox(height: 20),

            EmailSignup(),

            const SizedBox(height: 20),

            PasswordSignup(),

            const SizedBox(height: 20),

            Button("Sign Up"),

            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Text(
                  "Already have an account?",
                  style: TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.w600,
                  ),
                ),

                TextButton(
                  onPressed: () {
                    authent(0);
                  },
                  child: const Text(
                    "Login",
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