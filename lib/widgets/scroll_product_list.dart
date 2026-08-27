
import 'package:flutter/material.dart';
import 'package:market_application/models/card_model.dart';
import 'package:market_application/widgets/product_card.dart';

class ScrollProductList extends StatelessWidget {
  const ScrollProductList({super.key});
        static const List<CardModel> products = [
            CardModel(
              "assets/images/Panana.png",
              "7pcs, Priceg",
              4.99,
              "Organic Bananas",
            ),
            CardModel(
              "assets/images/apple.png",
              "1kg, Price",
              8.5,
              "Organic Apples",
            ),
            CardModel(
              "assets/images/Bell Pepper Red.png",
              "1kg, Price",
              10,
              "Bell Pepper Red",
            ),
            CardModel(
              "assets/images/Egg Chicken Red.png",
              "4pcs, Price",
              15,
              "Egg Chicken Red",
            ),
            CardModel(
              "assets/images/ginger.png",
              "250gm, Price",
              10,
              "Ginger",
            ),
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