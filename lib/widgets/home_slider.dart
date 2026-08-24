import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class HomeSlider extends StatefulWidget {
  const HomeSlider({super.key});

  @override
  State<HomeSlider> createState() => _HomeSliderState();
}

class _HomeSliderState extends State<HomeSlider> {
  int i = 0;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: Stack(
        children: [
          CarouselSlider(
            options: CarouselOptions(
              autoPlay: true,
              height: 115,
              viewportFraction: 1.0,
              onPageChanged: (index, reason) => setState(() {
                i = index;
              }),
            ),
      
            items: [
              'https://tse2.mm.bing.net/th/id/OIP.01aPdUWiu-mZrE9_3da5BQHaHa?r=0&rs=1&pid=ImgDetMain&o=7&rm=3',
      
              'https://tse4.mm.bing.net/th/id/OIP.v5N1pVj6R9zSg7asOj0SVQHaGL?r=0&w=600&h=500&rs=1&pid=ImgDetMain&o=7&rm=3',
      
              'https://th.bing.com/th/id/R.b1f08b5e7be4fa0306e1ece674d452bf?rik=rpQtYvnQobNc%2fw&riu=http%3a%2f%2feasywebpconverter.com%2fimg%2ffruits.webp&ehk=u718T2dLzLIwfFKkG0wcqnpCskuKE%2fjDepRohnpvHoo%3d&risl=&pid=ImgRaw&r=0',
            ].map(
              (i) => Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.all(Radius.circular(15)),
                  image: DecorationImage(
                    image: NetworkImage(i),
                    fit: BoxFit.fitWidth,
                  ),
                ),
              ),
            ).toList(),
          ),
          Positioned(
            bottom: 5,
            left: 0,
            right: 0,
            child: Center(
              child: AnimatedSmoothIndicator(
                activeIndex: i,
                count: 3,
                effect: const SwapEffect(
                  type: SwapType.yRotation,
                  activeDotColor: Colors.green,
                  dotColor: Colors.white
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}