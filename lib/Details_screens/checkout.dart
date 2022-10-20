import 'package:ecommerce_shop/Details_screens/details2.dart';
import 'package:ecommerce_shop/Details_screens/womenbag_details.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

class CheckOut extends StatelessWidget {
  const CheckOut({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
       appBar: AppBar(
        backgroundColor: const Color(0xE1E43C08),
        elevation: 0,
        leading: IconButton(onPressed: (){
          Navigator.push(context, MaterialPageRoute(builder: (context) => DetailsPage()));
        },
         icon:Icon(Icons.arrow_back_ios,color: Colors.white,)),
      ),
      body: Column(
         crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          SizedBox(
              height: MediaQuery.of(context).size.height / 2,
              width: MediaQuery.of(context).size.width,
              child: Card(
                // color: Colors.amber,
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Row(
                        children: [
                          Container(
                            height: 110,
                            width: 130,
                            decoration: BoxDecoration(
                              color: Colors.blueAccent,
                              borderRadius: BorderRadius.circular(10),
                              // image: DecorationImage(image: NetworkImage('url'),fit: BoxFit.cover)
                            ),
                          ),
                          SizedBox(width: 10,),
                           Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.start,
                             children: [
                               Text('GHC 150.99',style: TextStyle(fontWeight: FontWeight.bold),),
                           SizedBox(height: 15,),
                            Text('blue, uk:42',style: TextStyle(fontWeight: FontWeight.bold),),
                            SizedBox(height: 10,),
                             Text('Sporty sneaker (Men)',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20),),
                             ],
                           ),
                        ],
                      ),
                    ),
                    SizedBox(height: 10,),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          children: [
                            Icon(Icons.restore_from_trash_outlined,color:const Color(0xE1E43C08) ,),
                            SizedBox(width: 10,),
                            Text('Remove',style: TextStyle(color:const Color(0xE1E43C08) ),)
                          ],
                        ),
                         Row(
                          children: [
                            Icon(Icons.remove,color:const Color(0xE1E43C08) ,),
                            SizedBox(width: 10,),
                            Text('1'),
                            SizedBox(width: 10,),
                            Icon(Icons.add,color:const Color(0xE1E43C08) ,)
                          ],
                        )
                      ],
                    ),
                    SizedBox(height: 20,),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text('Subtotal'),
                        Text('GHC 150.99')
                      ],
                    ), SizedBox(height: 10,),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text('Delivery Fee'),
                        Text('GHC 25.99')
                      ],
                    ), SizedBox(height: 10,),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text('Total'),
                        Text('GHC 225.09')
                      ],
                    ), SizedBox(height: 10,),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Text('Select Payment Method'),
                     SizedBox(height: 10,),
                     Text('Pay On Delivery'),
                      SizedBox(height: 10,),
                      Text('Pay Via Momo'),
                      ],
                    ),
                         SizedBox(height: 10,),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: TextButton(
                      style: TextButton.styleFrom(backgroundColor:const Color(0xE1E43C08)),
                                              onPressed: (){},
                                             child: Center(child: Text('Confrim Payment',style: TextStyle(color: Colors.white,fontSize:20,)))),
                    ),

                  ],
                ),
              )),
        ],
      ),
    );
  }
}
