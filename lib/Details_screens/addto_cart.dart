import 'package:ecommerce_shop/Details_screens/womenbag_details.dart';
import 'package:ecommerce_shop/buttomnavigation/search.dart';
import 'package:ecommerce_shop/commons/list_api.dart';
import 'package:flutter/material.dart';

class AddToCart extends StatelessWidget {
  const AddToCart({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:  AppBar(
      elevation: 0.0,
      backgroundColor: const Color(0xE1E43C08),
      automaticallyImplyLeading: false,
     title: const Text('Cart List',style:  TextStyle(fontWeight: FontWeight.bold,color: Colors.white,fontSize: 30),),
     leading: IconButton(onPressed: (){
       Navigator.push(context, MaterialPageRoute(builder: (context) => const WomenBags(),));
     }, icon: const Icon(Icons.arrow_back_ios,color: Colors.white,)) ,
     actions: [
      IconButton(onPressed: (){
        Navigator.push(context, MaterialPageRoute(builder: (context) => const SearchPage(),));
      }, icon: const Icon(Icons.search,color: Colors.white,)),
      
     ],
    ),
    body: Column(
      children: [
        Expanded  (
          child: ListView.builder(
            itemCount: 4,
            itemBuilder: (context, index) {
            return
          SizedBox(
            height: 120,
            width: MediaQuery.of(context).size.width,
            child: Card(
              color: Colors.grey[200],
              child: Row(
                // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    height: 110,
                    width: 120,
                    decoration: BoxDecoration(
                      image: DecorationImage(image: NetworkImage(homeCard[index]['img']),fit: BoxFit.cover),
                    ),
                    
                  ),
                  const SizedBox(width: 15,),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(homeCard[index]['descrition']),
                        
                        const SizedBox(height: 10,),
                        Text(homeCard[index]['price']),
                      ],
                    ),
                  ),
                   const Icon(Icons.remove_circle_outline,color: Color(0xE1E43C08) ,),
                 
                ],
              ),
            ));
          },),
        )
      ],
    ),
    );
  }
}