import 'package:ecommerce_shop/Authentication/login_screen.dart';
import 'package:ecommerce_shop/Authentication/profile_edit.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        elevation: 0,
        centerTitle: false,
        backgroundColor: const Color(0xE1E43C08),
        leading:Padding(
          padding: const EdgeInsets.all(8.0),
          child: CircleAvatar(backgroundColor: Colors.white,),
        ),
        title: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Text('sddsfd'),
            Text('shshjjt'),
          ],
        ),
        actions: [
          IconButton(onPressed: (){
            Navigator.push(context, MaterialPageRoute(builder: (context) => ProfileEdit()));
          },
           icon: Icon(Icons.edit_rounded,color: Colors.white,))
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            Row(
              children: [
                Icon(Icons.payment,color:const Color(0xE1E43C08) ,),
                SizedBox(width: 10,),
                Text('Payment Method'),
                SizedBox(height: 20,)
              ],
            ),
            SizedBox(height: 30,),
            Row(
              children: [
                Icon(Icons.menu,color:const Color(0xE1E43C08) ,),
                SizedBox(width: 10,),
                Text('Order History'),
                SizedBox(height: 30,)
              ],
            ),
            SizedBox(height: 30,),
             Row(
              children: [
                Icon(Icons.delivery_dining_sharp,color:const Color(0xE1E43C08) ,),
                SizedBox(width: 10,),
                Text('Delivery Status'),
                SizedBox(height: 30,)
              ],
            ),
            SizedBox(height: 30,),
             Row(
              children: [
                Icon(Icons.language,color:const Color(0xE1E43C08) ,),
                SizedBox(width: 10,),
                Text('Language'),
              ],
            ),
            SizedBox(height: 30,),
             Row(
              children: [
                Icon(Icons.favorite,color:const Color(0xE1E43C08) ,),
                SizedBox(width: 10,),
                Text('Favorite'),
                SizedBox(height: 30,)
              ],
            ),
            SizedBox(height: 30,),
             Row(
              children: [
                Icon(Icons.lock,color:const Color(0xE1E43C08) ,),
                SizedBox(width: 10,),
                Text('Privacy Policy'),
                SizedBox(height: 30,)
              ],
            ),
            SizedBox(height: 30,),
            Row(
              children: [
                Icon(Icons.star,color:const Color(0xE1E43C08) ,),
                SizedBox(width: 10,),
                Text('Rate'),
                SizedBox(height: 30,)
              ],
            ),
            SizedBox(height: 30,),
           Padding(
             padding: const EdgeInsets.all(8.0),
             child: TextButton(
              style: TextButton.styleFrom(backgroundColor:const Color(0xE1E43C08), shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10))),
              onPressed: (){
                Navigator.push(context, MaterialPageRoute(builder: (context) => LogInPage()));
              },
              child: Center(child: Text('Log out',style: TextStyle(color: Colors.white),))),
           )
          ],
        ),
      ),
    );
  }
}