import 'package:ecommerce_shop/Authentication/login_screen.dart';
import 'package:ecommerce_shop/Authentication/profile_edit.dart';
import 'package:flutter/material.dart';

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
        leading:const Padding(
          padding: EdgeInsets.all(8.0),
          child: CircleAvatar(backgroundColor: Colors.white,),
        ),
        title: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.start,
          children: const [
            Text('sddsfd'),
            Text('shshjjt'),
          ],
        ),
        actions: [
          IconButton(onPressed: (){
            Navigator.push(context, MaterialPageRoute(builder: (context) => const ProfileEdit()));
          },
           icon: const Icon(Icons.edit_rounded,color: Colors.white,))
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            Row(
              children: const [
                Icon(Icons.payment,color:Color(0xE1E43C08) ,),
                SizedBox(width: 10,),
                Text('Payment Method'),
                SizedBox(height: 20,)
              ],
            ),
            const SizedBox(height: 30,),
            Row(
              children: const [
                Icon(Icons.menu,color:Color(0xE1E43C08) ,),
                SizedBox(width: 10,),
                Text('Order History'),
                SizedBox(height: 30,)
              ],
            ),
            const SizedBox(height: 30,),
             Row(
              children: const [
                Icon(Icons.delivery_dining_sharp,color:Color(0xE1E43C08) ,),
                SizedBox(width: 10,),
                Text('Delivery Status'),
                SizedBox(height: 30,)
              ],
            ),
            const SizedBox(height: 30,),
             Row(
              children: const [
                Icon(Icons.language,color:Color(0xE1E43C08) ,),
                SizedBox(width: 10,),
                Text('Language'),
              ],
            ),
            const SizedBox(height: 30,),
             Row(
              children: const [
                Icon(Icons.favorite,color:Color(0xE1E43C08) ,),
                SizedBox(width: 10,),
                Text('Favorite'),
                SizedBox(height: 30,)
              ],
            ),
            const SizedBox(height: 30,),
             Row(
              children: const [
                Icon(Icons.lock,color:Color(0xE1E43C08) ,),
                SizedBox(width: 10,),
                Text('Privacy Policy'),
                SizedBox(height: 30,)
              ],
            ),
            const SizedBox(height: 30,),
            Row(
              children: const [
                Icon(Icons.star,color:Color(0xE1E43C08) ,),
                SizedBox(width: 10,),
                Text('Rate'),
                SizedBox(height: 30,)
              ],
            ),
            const SizedBox(height: 30,),
           Padding(
             padding: const EdgeInsets.all(8.0),
             child: TextButton(
              style: TextButton.styleFrom(backgroundColor:const Color(0xE1E43C08), shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10))),
              onPressed: (){
                Navigator.push(context, MaterialPageRoute(builder: (context) => const LogInPage()));
              },
              child: const Center(child: Text('Log out',style: TextStyle(color: Colors.white),))),
           )
          ],
        ),
      ),
    );
  }
}