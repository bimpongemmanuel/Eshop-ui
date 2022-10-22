import 'package:ecommerce_shop/buttomnavigation/navbar.dart';
import 'package:ecommerce_shop/commons/list_api.dart';
import 'package:flutter/material.dart';

class SearchPage extends StatelessWidget {
  const SearchPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
       appBar:  AppBar(
      elevation: 0.0,
      backgroundColor: const Color(0xE1E43C08),
      automaticallyImplyLeading: false,
     title:const Padding(
       padding:  EdgeInsets.fromLTRB(10,10,10,0),
       child: TextField(
        cursorColor: Colors.grey,
        decoration: InputDecoration(
          hintText: 'search',
          hintStyle: TextStyle(color: Colors.white),
          prefixIcon: Icon(Icons.search,color: Colors.grey,),
          prefixIconColor: Colors.white,
          ),
       ),
     ),
     centerTitle: false,
     leading: IconButton(onPressed: (){
      Navigator.push(context, MaterialPageRoute(builder: (context) => const MyNav()));
     }, icon: const Icon(Icons.arrow_back_ios,color: Colors.white,)) ,
     actions: [
      IconButton(onPressed: (){}, icon: const Icon(Icons.bookmark_border_outlined,color: Colors.white,)),
     ],
    ),
    body: Column(
      children: [
        Expanded(
          child: GridView.builder(gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2), 
          itemCount:homeCard.length ,
          itemBuilder: (context, index) {
            return SizedBox(
        height: 190,
        width: 150,
        child: Card(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
           Container(
            height: 120,
            decoration:BoxDecoration(
              image:DecorationImage(image: NetworkImage(homeCard[index]['img']),fit: BoxFit.cover)
            )
           ),
           const SizedBox(height: 10,), 
           Padding(
             padding: const EdgeInsets.all(5.0),
             child: Text(homeCard[index]['descrition'],style: const TextStyle(fontWeight: FontWeight.bold)),
           ),
           const SizedBox(height: 5,),
           Padding(
             padding: const EdgeInsets.all(5.0),
             child: Text(homeCard[index]['price'],style: const TextStyle(fontWeight: FontWeight.bold)),
           ),

          ]),
          // color: Colors.amber,
        ),
      );
          },),
        )
        
    ]),
    );
  }
}