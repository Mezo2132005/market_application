
import 'package:flutter/material.dart';

class AccountItem extends StatelessWidget {
  final IconData ico;
  final String txt;

  const AccountItem({super.key,required this.ico,required this.txt});

  @override
  Widget build(BuildContext context) {
    return Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Column(
              children: [
                Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [Icon(ico),Text(txt), Icon(Icons.arrow_forward_ios)] ),
                Divider(height: 40, color: Color(0xffE2E2E2),),
              ],
            ),
          )  ;
  }
}