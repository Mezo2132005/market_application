import 'package:flutter/material.dart';
import 'package:market_application/models/card_model.dart';
import 'package:market_application/widgets/product_card.dart';

class ScrollProductList2 extends StatelessWidget {
  const ScrollProductList2({super.key});
        static const List<CardModel> products = [
            CardModel(
              "assets/images/Beef.png",
              "7pcs, Priceg",
              85.5,
              "Beef",
            ),
            CardModel(
              "assets/images/Chicken.png",
              "1kg, Price",
              45.99,
              "Chicken",
            ),
            CardModel(
              "assets/images/Pasta.png",
              "1kg, Price",
              26,
              "Pasta",
            ),
            CardModel(
              "assets/images/White Eggs.png",
              "4pcs, Price",
              14.99,
              "White Eggs",
            )
          ];


  @override
  Widget build(BuildContext context) {
    return Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10),
            child: SizedBox(
              width: double.infinity,
              height: 248.5,
              child: ListView.separated(itemBuilder: ((context, index){
              
                return ProductCard(cardModel: products[index]);
                
              
              }
              ),
              scrollDirection: Axis.horizontal,
              
              
              separatorBuilder: ((context,index) => const SizedBox(width: 10,)), itemCount: products.length),
            ),
          );
  }
}