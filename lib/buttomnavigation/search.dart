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
     actions: [
      IconButton(onPressed: (){}, icon: const Icon(Icons.bookmark_border_outlined,color: Colors.white,)),
     ],
    ),
    body:ListView.builder(itemBuilder: (context, index) {
      return SizedBox(
        height: 120,
        width: MediaQuery.of(context).size.width,
        child: Card(
          
        ),
      );
    },),
    );
  }
}