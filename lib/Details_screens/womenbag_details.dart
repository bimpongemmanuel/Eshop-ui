import 'package:ecommerce_shop/Details_screens/addto_cart.dart';
import 'package:ecommerce_shop/Details_screens/buy_now.dart';
import 'package:ecommerce_shop/Details_screens/details2.dart';
import 'package:ecommerce_shop/buttomnavigation/navbar.dart';
import 'package:ecommerce_shop/screen/carousel_dot.dart';
import 'package:flutter/material.dart';

class WomenBags extends StatelessWidget {
   const WomenBags({Key? key}) : super(key: key);
  
    // EShopModel? allProducts;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color(0xE1E43C08),
        elevation: 0,
        leading: IconButton(onPressed: (){
          Navigator.push(context, MaterialPageRoute(builder: (context) => const MyNav(),));
        },
         icon:const Icon(Icons.arrow_back_ios,color: Colors.white,)),
         actions: [
          IconButton(onPressed: (){
            Navigator.push(context, MaterialPageRoute(builder: (context) => const AddToCart()));
          },
           icon: const Icon(Icons.shopping_cart,color: Colors.white,))
         ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const SizedBox(height: 200   , 
            child:  HandBag(),),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const Text("GHC 120",style: TextStyle(fontWeight: FontWeight.bold,color:Color(0xE1E43C08) ),),
              Row(
                children: const[
                   Icon(Icons.star,color: Color(0xE1E43C08),),
                   Icon(Icons.star,color: Color(0xE1E43C08),),
                   Icon(Icons.star,color: Color(0xE1E43C08),),
                   Icon(Icons.star,color: Color(0xE1E43C08),),
                   Icon(Icons.star,color:  Colors.grey,),
                  Text('4.5')
                ],
              ),
            ],
          ),
           const SizedBox(height: 10,),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const Text('Designer HandBag',style: TextStyle(fontWeight: FontWeight.bold),),
              Row(
                children: const [
                  Text('15'),
               SizedBox(width: 5,),
               Text('|',style: TextStyle(fontWeight: FontWeight.bold,color:Color(0xE1E43C08) ),), SizedBox(width: 5,),
              Text('In stock',style:  TextStyle(fontWeight: FontWeight.bold),),
                ],
              ),
            ],
          ),
           const SizedBox(height: 20,),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Expanded(
                child: TextButton(
                  style: TextButton.styleFrom(backgroundColor:const Color(0xE0E0B5A8) ),
                  onPressed: (){},
                 child:const Text('Product',style:  TextStyle(fontWeight: FontWeight.bold,color: Colors.white),), ),
              ),const SizedBox(width: 10,),
              Expanded(
                child: TextButton(
                  onPressed: (){
                    Navigator.push(context,MaterialPageRoute(builder: (context) =>const DetailsPage() ,));
                  },
                 child:const Text('Details',style:  TextStyle(fontWeight: FontWeight.bold,color: Colors.black),), ),
              ),
              
      
            ],
          ),
           const SizedBox(height: 25,),
          const Text('Select Color',style: TextStyle(fontWeight: FontWeight.bold),),
            const SizedBox(height: 10,),
            Row(
              children: const [
                CircleAvatar(),
                    SizedBox(width: 10,),
                CircleAvatar(),
                    SizedBox(width: 10,),
                CircleAvatar(),
              ],
            ),
             const SizedBox(height: 10,),
               const Text('Select Brand',style:  TextStyle(fontWeight: FontWeight.bold),),
            const SizedBox(height: 15,),
            Row(
              children: const [
                Text('Gucci',style: TextStyle(fontWeight: FontWeight.bold),),
                SizedBox(width: 10,),
                Text('Nike',style:  TextStyle(fontWeight: FontWeight.bold),),
                SizedBox(width: 10,),
                Text('Addidas',style: TextStyle(fontWeight: FontWeight.bold),),
                SizedBox(width: 10,),
                Text('Channel',style:  TextStyle(fontWeight: FontWeight.bold),),
                SizedBox(width: 10,),
                Text('Prada',style: TextStyle(fontWeight: FontWeight.bold),),
              ],
            ),
            const SizedBox(height: 20,),
            Row(
              children: [
                Expanded(
                  child: TextButton(
                    style: TextButton.styleFrom(backgroundColor:const Color(0xE1E43C08)),
                    onPressed: (){},
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