import 'package:ecommerce_shop/commons/list_api.dart';
import 'package:ecommerce_shop/model.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

class CategoryScreen extends StatelessWidget {
 CategoryScreen({Key? key,this.allProducts}) : super(key: key);

    EShopModel? allProducts;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:  AppBar(
      elevation: 0.0,
      backgroundColor: const Color(0xE1E43C08),
      automaticallyImplyLeading: false,
     title: const Text('MShop',style:  TextStyle(fontWeight: FontWeight.bold,color: Colors.white,fontSize: 30),),
     centerTitle: false,
     leading: IconButton(onPressed: (){}, icon: const Icon(Icons.arrow_back_ios,color: Colors.white,)) ,
     actions: [
      IconButton(onPressed: (){}, icon: const Icon(Icons.search,color: Colors.white,)),
      IconButton(onPressed: (){}, icon: const Icon(Icons.bookmark_border_outlined,color: Colors.white,)),
     ],
    ),
    body: Column(
      children: [
        Expanded(
          child: GridView.builder(
             itemCount:homeCard.length, 
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
          itemBuilder: (context, index) {
            return
          SizedBox(
            height: 180,
            width: 150,
            child: GestureDetector(
              child: Card(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Container(
                      height: 120,                
                      decoration: BoxDecoration(
                      image: DecorationImage(image: NetworkImage(homeCard[index]['img']),fit: BoxFit.cover),
                      ),
                    ),
                    SizedBox(height: 10,),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text(homeCard[index]['descrition'],style: TextStyle(fontSize: 15,fontWeight: FontWeight.bold),),
                    )
                ]),
              ),
              
            ));
          },),
        )
      ],
    ),
    );
  }
}