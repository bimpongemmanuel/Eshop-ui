import 'package:ecommerce_shop/buttomnavigation/navbar.dart';
import 'package:flutter/material.dart';
class MySearch extends StatelessWidget {
  const MySearch({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
       appBar:  AppBar(
      elevation: 0.0,
      backgroundColor: const Color(0xE1E43C08),
      automaticallyImplyLeading: false,
     title:const TextField(
      decoration:  InputDecoration(
        hintText: 'Search'
      ),
     ) ,
     leading: IconButton(onPressed: (){
      Navigator.push(context, MaterialPageRoute(builder: (context) => const MyNav(),));
     },
      icon: const Icon(Icons.arrow_back_ios)),
    ),
    body: Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: const [
          Text('Recent search',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20),),

          Text('Laptops',style: TextStyle(fontWeight: FontWeight.bold,),),
          Text('Sneakers',style: TextStyle(fontWeight: FontWeight.bold),),
        ],
      ),
    ),
    );
  }
}