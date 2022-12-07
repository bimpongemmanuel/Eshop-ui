import 'package:ecommerce_shop/Details_screens/category_details.dart';
import 'package:ecommerce_shop/commons/cat_list.dart';
import 'package:ecommerce_shop/commons/list_api.dart';
import 'package:flutter/material.dart';

class CategoryScreen extends StatelessWidget {
 const CategoryScreen({Key? key}) : super(key: key);

    // EShopModel? allProducts;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:  AppBar(
      elevation: 0.0,
      automaticallyImplyLeading: false,
     title: const Text('Category',style:  TextStyle(fontWeight: FontWeight.bold,color: Colors.white,fontSize: 30),),
     centerTitle: false,
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
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
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
                    const SizedBox(height: 10,),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text(homeCard[index]['name'],style: const TextStyle(fontSize: 15,fontWeight: FontWeight.bold),),
                    )
                ]),
              ),
              onTap: (){
                Navigator.push(context, MaterialPageRoute(builder: (context) => CatDetails(
                  categoryDetails:catList[index] ,
                ),));
              },
            ),
            );
          },),
        )
      ],
    ),
    );
  }
}