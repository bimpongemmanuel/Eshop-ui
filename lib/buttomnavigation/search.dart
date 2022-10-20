import 'package:ecommerce_shop/buttomnavigation/navbar.dart';
import 'package:ecommerce_shop/commons/api.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

class SearchPage extends StatelessWidget {
  const SearchPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var outlinedInputBorder = OutlineInputBorder(
      borderRadius: BorderRadius.circular(10),
      borderSide: BorderSide(color: Colors.white)
    );
    return Scaffold(
       appBar:  AppBar(
      elevation: 0.0,
      backgroundColor: const Color(0xE1E43C08),
      automaticallyImplyLeading: false,
     title:Padding(
       padding:  EdgeInsets.fromLTRB(8,8,8,0),
       child: TextField(
        decoration: InputDecoration(
          hintText: 'search',
          border: outlinedInputBorder,
          focusedBorder: outlinedInputBorder,
          prefixIcon: Icon(Icons.search),
          prefixIconColor: Colors.white,
          ),
       ),
     ),
     centerTitle: false,
     leading: IconButton(onPressed: (){
      Navigator.push(context, MaterialPageRoute(builder: (context) => MyNav()));
     }, icon: const Icon(Icons.arrow_back_ios,color: Colors.white,)) ,
     actions: [
      IconButton(onPressed: (){}, icon: const Icon(Icons.bookmark_border_outlined,color: Colors.white,)),
     ],
    ),
    body: Column(
      children: [
        Expanded(
          child: GridView.builder(gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2), 
          itemCount:4 ,
          itemBuilder: (context, index) {
            return searchCard();
          },),
        )
        
    ]),
    );
  }

  SizedBox searchCard() {
    return SizedBox(
        height: 180,
        width: 150,
        child: Card(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
           Container(
            height: 110,
            decoration:BoxDecoration(
              image:DecorationImage(image: NetworkImage('https://images.unsplash.com/photo-1595950653106-6c9ebd614d3a?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8Mnx8c25lYWtlcnN8ZW58MHx8MHx8&auto=format&fit=crop&w=500&q=60'),fit: BoxFit.cover)
            )
           ),
           SizedBox(height: 10,),
           Text('Sneaker'),
           SizedBox(height: 5,),
           Text('GHC 120.00'),

          ]),
          color: Colors.amber,
        ),
      );
  }
}