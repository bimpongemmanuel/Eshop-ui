import 'package:ecommerce_shop/buttomnavigation/navbar.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

class PaymentMade extends StatelessWidget {
  const PaymentMade({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
       children: [
        CircleAvatar(
          radius: 70,
          backgroundColor: const Color(0xE1E43C08),
          child: Icon(Icons.check,size: 80,),
        ),
        SizedBox(height: 15,),
        Text('Awesome, Payment was Sucessful',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20),),
        SizedBox(height: 15,),
        Padding(
          padding: const EdgeInsets.all(10.0),
          child: TextButton(
            style: TextButton.styleFrom(backgroundColor:const Color(0xE1E43C08),shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)) ),
            onPressed: (){
              Navigator.push(context, MaterialPageRoute(builder: (context) => MyNav(),));
            },
           child: Center(child: Text('Done',style: TextStyle(color: Colors.white),))),
        ),
       ],
      ),
    );
  }
}