import 'package:flutter/material.dart';
import 'package:market_application/widgets/category_with_seeall.dart';
import 'package:market_application/widgets/home_slider.dart';
import 'package:market_application/widgets/scroll_product_list.dart';
import 'package:market_application/widgets/scroll_product_list_2.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  static const List<Widget> scrollScreen = [

          CategoryWithSeeall(txt: "Exclusive Offer"),

          ScrollProductList(),

          CategoryWithSeeall(txt: "Best Selling"),

          ScrollProductList2(),

  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        scrolledUnderElevation: 0,
        backgroundColor: Colors.white,
        title: Image.asset("assets/images/Group.png", scale: .8,),
        centerTitle: true,
        toolbarHeight: 100,
      ),
      body: Center(
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(Icons.place),
                Text("Dhaka, Banassre",style: TextStyle(fontSize: 18,fontWeight: FontWeight(600)),),
              ],
            ),

            Padding(
              padding: const EdgeInsets.all(10),
              child: Container(
                  decoration: BoxDecoration(
                  color: Color(0xffF2F3F2),
                  borderRadius: BorderRadius.circular(20),),
                child: TextFormField(
                  onTapOutside: (event) {
                    FocusScope.of(context).unfocus();
                  },
                  textAlignVertical: TextAlignVertical.center,
                  style: TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight(600),
                  ),
                  decoration: InputDecoration(
                    fillColor: Color(0xffF2F3F2),
                    border: InputBorder.none,
                    hintText: "Search Store",
                    hintStyle: TextStyle(color: Color(0xff7C7C7C)),
                    prefixIcon: Icon(Icons.search)
                  ),
                ),
              ),
            ),

          HomeSlider(),

          Expanded(
              child: ListView.builder(
                itemBuilder: ((context, index) => scrollScreen[index]),
                itemCount: scrollScreen.length,
              ),
            ),


          ],),),);
  }
}