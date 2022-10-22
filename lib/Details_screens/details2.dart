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
          Navigator.push(context, MaterialPageRoute(builder: (context) => const WomenBags()));
        },
         icon:const Icon(Icons.arrow_back_ios,color: Colors.white,)),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const SizedBox(height: 200   , 
            child:  HandBag()),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const Text('GHC 120',style: TextStyle(fontWeight: FontWeight.bold,color:Color(0xE1E43C08) ),),
              Row(
                children: const [
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
              const Text('Designer HandBag',style:  TextStyle(fontWeight: FontWeight.bold),),
              Row(
                children: const [
                  Text('15'),
               SizedBox(width: 5,),
               Text('|',style: TextStyle(fontWeight: FontWeight.bold,color:Color(0xE1E43C08) ),), SizedBox(width: 5,),
              Text('In stock',style: TextStyle(fontWeight: FontWeight.bold),),
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
                  onPressed: (){
                    Navigator.push(context, MaterialPageRoute(builder: (context) => const WomenBags()));
                  },
                 child:const Text('Product',style: TextStyle(fontWeight: FontWeight.bold,color: Colors.black),), ),
              ),const SizedBox(width: 10,),
              Expanded(
                child: TextButton(
                  style: TextButton.styleFrom(backgroundColor:const Color(0xE0E0B5A8) ),
                  onPressed: (){},
                 child:const Text('Details',style: TextStyle(fontWeight: FontWeight.bold,color: Colors.white),), ),
              ),
              
      
            ],
          ),
           const SizedBox(height: 25,),
          const Text('Brand',style: TextStyle(fontWeight: FontWeight.bold),),
            const SizedBox(height: 5,),
           const Text('Gucci',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20),),
             const SizedBox(height: 15,),
               const Text('Condition',style: TextStyle(fontWeight: FontWeight.bold),),
            const SizedBox(height: 5,),
            const Text('Brand New, With Box',style: TextStyle(fontWeight: FontWeight.bold,fontSize:20)),
            const SizedBox(height: 15,),
            const Text('Category',style:  TextStyle(fontWeight: FontWeight.bold),),
            const SizedBox(height: 5,),
            const Text('Women\'s Bag',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20),),
            
            const SizedBox(height: 20,),
            TextButton(
              style: TextButton.styleFrom(backgroundColor:const Color(0xE1E43C08)),
              onPressed: (){},
             child: const Center(child: Text('Add to Cart',style: TextStyle(color: Colors.white),)))
        ],
        ),
      ),
    );
  }
}