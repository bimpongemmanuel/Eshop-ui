import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/cupertino.dart';

CarouselSlider myCarouselSlider (BuildContext context){
  return CarouselSlider(
    items: [
      Padding(
        padding: const EdgeInsets.all(8.0),
        child: Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            image: const DecorationImage(image:NetworkImage('https://cdn.luxe.digital/media/20220215123954/best-men-sneakers-balanciaga-triple-s-luxe-digital-780x520.jpg'),
            fit: BoxFit.cover,
            )
          ),
        ),
      ),
       Padding(
         padding: const EdgeInsets.all(8.0),
         child: Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            image: const DecorationImage(image:NetworkImage('https://cdn.dribbble.com/users/61921/screenshots/9634673/media/985b2add2b952f24634b717c4d846bf2.png?compress=1&resize=400x300'),
            fit: BoxFit.cover,
            )
          ),
      ),
       ),
       Padding(
         padding: const EdgeInsets.all(8.0),
         child: Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            image: const DecorationImage(image:NetworkImage('https://m.media-amazon.com/images/I/71Rw9zTatDL._UL1500_.jpg'),
            fit: BoxFit.cover,
            )
          ),
      ),
       ),
       Padding(
         padding: const EdgeInsets.all(8.0),
         child: Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            image: const DecorationImage(image:NetworkImage('https://d1csarkz8obe9u.cloudfront.net/posterpreviews/t-shirt-design-template-096cfcbec61b2c43440782c3ae447f47_screen.jpg?ts=1612183823'),
            fit: BoxFit.cover,
            )
          ),
      ),
       ),
    ],
   options: CarouselOptions(
     height: 180.0,
            enlargeCenterPage: true,
            autoPlay: true,
            aspectRatio: 16/9,
            autoPlayCurve: Curves.fastOutSlowIn,
            enableInfiniteScroll: true,
            autoPlayAnimationDuration:const Duration(milliseconds: 800),
            viewportFraction: 1,
   ));

}