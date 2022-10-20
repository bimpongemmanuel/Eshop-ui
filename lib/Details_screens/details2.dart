import 'package:ecommerce_shop/Details_screens/checkout.dart';
import 'package:ecommerce_shop/Details_screens/womenbag_details.dart';
import 'package:ecommerce_shop/screen/carousel_dot.dart';
import 'package:flutter/material.dart';

class DetailsPage extends StatelessWidget {
  const DetailsPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color(0xE1E43C08),
        elevation: 0,
        leading: IconButton(onPressed: (){
          Navigator.push(context, MaterialPageRoute(builder: (context) => WomenBags()));
        },
         icon:Icon(Icons.arrow_back_ios,color: Colors.white,)),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(height: 200   ,   child: HandBag()),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text('GHC 120',style: TextStyle(fontWeight: FontWeight.bold,color:const Color(0xE1E43C08) ),),
              Row(
                children: [
                  Icon(Icons.star,color: const Color(0xE1E43C08),),
                  Icon(Icons.star,color: const Color(0xE1E43C08),),
                  Icon(Icons.star,color: const Color(0xE1E43C08),),
                  Icon(Icons.star,color: const Color(0xE1E43C08),),
                  Icon(Icons.star,color:  Colors.grey,),
                  Text('4.5')
                ],
              ),
            ],
          ),
           SizedBox(height: 10,),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text('Designer HandBag',style: TextStyle(fontWeight: FontWeight.bold),),
              Row(
                children: [
                  Text('15'),
               SizedBox(width: 5,),
               Text('|',style: TextStyle(fontWeight: FontWeight.bold,color:const Color(0xE1E43C08) ),), SizedBox(width: 5,),
              Text('In stock',style: TextStyle(fontWeight: FontWeight.bold),),
                ],
              ),
            ],
          ),
           SizedBox(height: 20,),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Expanded(
                child: TextButton(
                  onPressed: (){
                    Navigator.push(context, MaterialPageRoute(builder: (context) => WomenBags()));
                  },
                 child:Text('Product',style: TextStyle(fontWeight: FontWeight.bold,color: Colors.black),), ),
              ),SizedBox(width: 10,),
              Expanded(
                child: TextButton(
                  style: TextButton.styleFrom(backgroundColor:const Color(0xE0E0B5A8) ),
                  onPressed: (){},
                 child:Text('Details',style: TextStyle(fontWeight: FontWeight.bold,color: Colors.white),), ),
              ),
              
      
            ],
          ),
           SizedBox(height: 25,),
          Text('Brand',style: TextStyle(fontWeight: FontWeight.bold),),
            SizedBox(height: 5,),
           Text('Gucci',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20),),
             SizedBox(height: 15,),
               Text('Condition',style: TextStyle(fontWeight: FontWeight.bold),),
            SizedBox(height: 5,),
            Text('Brand New, With Box',style: TextStyle(fontWeight: FontWeight.bold,fontSize:20)),
            SizedBox(height: 15,),
            Text('Category',style: TextStyle(fontWeight: FontWeight.bold),),
            SizedBox(height: 5,),
            Text('Women\'s Bag',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20),),
            
            SizedBox(height: 20,),
            Row(
              children: [
                Expanded(
                  child: TextButton(
                    style: TextButton.styleFrom(backgroundColor:const Color(0xE1E43C08)),
                    onPressed: (){},
                   child: Text('Add to Cart',style: TextStyle(color: Colors.white),)),
                ),
                SizedBox(width: 10,),

                  Expanded(
                  child: TextButton(
                    style: TextButton.styleFrom(backgroundColor:const Color(0xE1E43C08)),
                    onPressed: (){
                      Navigator.push(context, MaterialPageRoute(builder: (context) => CheckOut()));
                    },
                   child: Text('Buy Now',style: TextStyle(color: Colors.white),)),
                )
              ],
            )
        ],
        ),
      ),
    );
  }
}