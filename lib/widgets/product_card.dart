
import 'package:flutter/material.dart';

class ProductCard extends StatelessWidget {
  const ProductCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
        height: 248.50999450683594,
        width: 173.3249969482422,
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadiusGeometry.all(Radius.circular(18)),
          border: BoxBorder.all(color: Color(0xff7C7C7C),width: 1)
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Expanded(
              child: Center(
                child: Container(
                  height: 80,
                  width: 100,
                  decoration: BoxDecoration(
                  image: DecorationImage(image: AssetImage("assets/images/Panana.png"),fit: BoxFit.fitWidth),
                ),),
              ),
            ),
            SizedBox(height: 10,),
            Padding(
              padding: const EdgeInsets.only(left: 10),
              child: Text("Organic Bananas",style: TextStyle(fontSize: 16,fontWeight: FontWeight.bold),),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 10),
              child: Text("7pcs, Priceg",style: TextStyle(fontSize: 14,color: Color(0xff7C7C7C)),),
            ),
            SizedBox(height: 10,),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
              Text("\$4.99",style: TextStyle(fontSize: 16,fontWeight: FontWeight.bold),),
              Padding(
                padding: const EdgeInsetsGeometry.only(bottom: 10),
                child: Container(decoration: BoxDecoration(color: Colors.green, borderRadius: BorderRadiusGeometry.all(Radius.circular(17))),height: 46,width: 46,child: Icon(Icons.add,color: Colors.white, size: 32,)),
              ),
            ],)
          ],
        ),
      );
  }
}