import 'package:ecommerce_shop/Details_screens/addto_cart.dart';
import 'package:ecommerce_shop/Details_screens/buy_now.dart';
import 'package:ecommerce_shop/Details_screens/details2.dart';
import 'package:ecommerce_shop/buttomnavigation/navbar.dart';
import 'package:ecommerce_shop/commons/list_api.dart';
import 'package:ecommerce_shop/provider_controller.dart';
import 'package:ecommerce_shop/screen/carousel_dot.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class DetailsPage extends StatelessWidget {
   const DetailsPage({Key? key,this.productDetails}) : super(key: key);
      final productDetails;
    // EShopModel? allProducts;
  @override
  Widget build(BuildContext context) {
    final product = Provider.of<Cartprovider>(context);
    return Scaffold(
      appBar: AppBar(
        title: Text('Item Details'),
        elevation: 0.0,
        leading: IconButton(onPressed: (){
          Navigator.pop(context);
        },
         icon:const Icon(Icons.arrow_back_ios,color: Colors.white,)),
         actions: [
          Stack(
            children: [
              CircleAvatar(
                backgroundColor: Colors.orange,
                radius: 10,
                child: Text(product.cartmodel.length == 0 ? '' : product.cartmodel.length.toString()),
              ),
              IconButton(onPressed: (){
                Navigator.push(context, MaterialPageRoute(builder: (context) => const AddToCart()));
              },
               icon:  const Icon(Icons.shopping_cart,color: Colors.white,)),
            ],
          )
         ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
        children: [
            Container(
              height: 300,
              width: MediaQuery.of(context).size.width,
              decoration: BoxDecoration(
                image: DecorationImage(image: NetworkImage(productDetails['img']),fit: BoxFit.cover,
                   ),
              borderRadius: BorderRadius.circular(10),

              ),
            ),
           
            SizedBox(height: 15,),
                 Text(productDetails['name'],style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20),),
            SizedBox(height: 15,),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(productDetails['price'],style: TextStyle(fontWeight: FontWeight.bold,color:Color(0xE1E43C08) ),),

                Row(
                  children: [
                    IconButton(
                      style: IconButton.styleFrom(shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),backgroundColor: Colors.black),
                      onPressed: (){
                        product.decreaseInitialValue();
                      },
                     icon: Icon(Icons.remove)),
                     SizedBox(width: 10,),
                Text('${product.intialvalue}'),
                SizedBox(width: 10,),
                IconButton(
                      style: IconButton.styleFrom(shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),backgroundColor: Colors.orange),
                      onPressed: (){
                        product.increaseInitialValue();
                      },
                     icon: Icon(Icons.add)),
                  ],
                ),
                ],
              ),
            
            const SizedBox(height: 20,),
            Row(
              children: [
                Expanded(
                  child: TextButton(
                    style: TextButton.styleFrom(backgroundColor:const Color(0xE1E43C08)),
                    onPressed: () => product.addToCart({
                      'title':'womanbag',

                    }),
                   child: const Text('Add to Cart',style: TextStyle(color: Colors.white),)),
                ),
                const SizedBox(width: 10,),

                  Expanded(
                  child: TextButton(
                    style: TextButton.styleFrom(backgroundColor:const Color(0xE1E43C08)),
                    onPressed: (){
                      Navigator.push(context, MaterialPageRoute(builder: (context) => const BuyNow()));
                    },
                   child: const Text('Buy Now',style:  TextStyle(color: Colors.white),)),
                )
              ],
            )
        ],
        ),
      ),
    );
  }
}