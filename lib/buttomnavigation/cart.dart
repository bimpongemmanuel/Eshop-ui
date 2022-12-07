import 'package:ecommerce_shop/commons/list_api.dart';
import 'package:ecommerce_shop/provider_controller.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class MyCartPage extends StatelessWidget {
  const MyCartPage({super.key});

  @override
  Widget build(BuildContext context) {
    final product = Provider.of<Cartprovider>(context);
    return Scaffold(
      appBar:  AppBar(
      elevation: 0.0,
      automaticallyImplyLeading: false,
     title: const Text('Cart List',style:  TextStyle(fontWeight: FontWeight.bold,color: Colors.white,fontSize: 30),),
     centerTitle: false,
     
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
                    image: DecorationImage(image: NetworkImage(homeCard[index]['img']),fit: BoxFit.fill)
                  ),
                ),
                SizedBox(width: 10,),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(homeCard[index]['name'],style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20)),
                      SizedBox(height: 15,),
                      Text(homeCard[index]['price'],style: TextStyle(fontWeight: FontWeight.bold,fontSize: 15)),
                      
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