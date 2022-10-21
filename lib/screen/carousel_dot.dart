import 'package:carousel_slider/carousel_slider.dart';
import 'package:dots_indicator/dots_indicator.dart';
import 'package:flutter/material.dart';


class HandBag extends StatefulWidget {
  const HandBag({Key? key}) : super(key: key);

  @override
  State<HandBag> createState() => _HandBagState();
}

class _HandBagState extends State<HandBag> {

  int _currentPageIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        alignment:AlignmentDirectional.bottomCenter ,       
        children: [   
         CarouselSlider(
           items: items
              .map((image) => Builder(
                    builder: (BuildContext context) {
                      return Container(                    
                        decoration: BoxDecoration(
                         borderRadius: BorderRadius.circular(10),
                          image: DecorationImage(
                            image: NetworkImage(image),
                            fit: BoxFit.fill,
                          ),
                        ),
                      );
                    },
                  ))
              .toList(),
         
          options: CarouselOptions(
          height: 180.0,
          enlargeCenterPage: true,
          autoPlay: true,
          aspectRatio: 16/9,
          autoPlayCurve: Curves.fastOutSlowIn,
          enableInfiniteScroll: true,
          autoPlayAnimationDuration:const Duration(milliseconds: 800),
          viewportFraction: 1,
          onPageChanged:(index,reason){
            setState(() {
              _currentPageIndex=index;
            });
          }
   )),
   DotsIndicator(
    position: _currentPageIndex.toDouble(),
    dotsCount: items.length,
    decorator: DotsDecorator(
      activeColor: _currentPageIndex==items[_currentPageIndex] ? Colors.black:const Color(0xE1E43C08),
      activeSize:const Size.fromRadius(10),
      activeShape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10))
       ),),
       
      ]));
  }
}

List items = [
  // 'https://image.harrods.com/15/37/10/95/15371095_37633693_2048.jpg',
  'https://m.media-amazon.com/images/I/71Rw9zTatDL._UX395_.jpg',
  'https://m.media-amazon.com/images/I/81NDdUo+8aL._UL1500_.jpg',
  'https://rukminim1.flixcart.com/image/312/312/kmwcuq80/sling-bag/d/a/t/new-design-pu-leather-stylish-sling-bag-for-women-and-girls-original-imagfp2wsbjxzazf.jpeg?q=70'
];