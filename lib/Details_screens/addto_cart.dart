import 'package:ecommerce_shop/Details_screens/details_page.dart';
import 'package:ecommerce_shop/buttomnavigation/search.dart';
import 'package:ecommerce_shop/commons/list_api.dart';
import 'package:ecommerce_shop/provider_controller.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class AddToCart extends StatelessWidget {
  const AddToCart({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final product = Provider.of<Cartprovider>(context);
    return Scaffold(
      appBar:  AppBar(
      elevation: 0.0,
      automaticallyImplyLeading: false,
     title: const Text('Cart List',style:  TextStyle(fontWeight: FontWeight.bold,color: Colors.white,fontSize: 30),),
     leading: IconButton(onPressed: (){
       Navigator.pop(context);
     }, icon: const Icon(Icons.arrow_back_ios,color: Colors.white,)) ,
     actions: [
      IconButton(onPressed: (){}, icon: const Icon(Icons.search,color: Colors.white,)),
      
     ],
    ),
    body: ListView.builder(
      itemCount: product.cartmodel.length, 
      itemBuilder: (context, index)=>
      Padding(
        padding: const EdgeInsets.all(8.0),
        child: SizedBox(
          height: 150,
          width: MediaQuery.of(context).size.width,
          child: Card(
            child:Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  height: 150,
                  width: 140,
                  decoration: BoxDecoration(
                    image: DecorationImage(image: NetworkImage(product.cartmodel[index]['img']),fit: BoxFit.fill)
                  ),
                ),
                SizedBox(width: 10,),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(product.cartmodel[index]['name'],style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20)),
                      SizedBox(height: 15,),
                      Text(product.cartmodel[index]['price'],style: TextStyle(fontWeight: FontWeight.bold,fontSize: 15)),
                      
                    ],
                  ),
                ),
                IconButton(onPressed: (){},
                 icon:Icon(Icons.remove))
              ],
            ),
          ),
        ),
      ),
       ),
    );
  }
}