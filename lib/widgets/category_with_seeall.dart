
import 'package:flutter/material.dart';

class CategoryWithSeeall extends StatelessWidget {
  const CategoryWithSeeall({super.key,required this.txt});
  final String txt;

  @override
  Widget build(BuildContext context) {
    return Padding(
            padding: EdgeInsets.all(10.0),
            child: Row(
              children: [
                Expanded(child: Text(txt,style: TextStyle(fontSize: 24,fontWeight: FontWeight.bold),)),
                Text("See All",style: TextStyle(fontSize: 16,fontWeight: FontWeight.bold,color: Colors.green),),
              ],
            ),
          );
  }
}