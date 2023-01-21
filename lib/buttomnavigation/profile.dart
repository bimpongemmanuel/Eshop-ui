import 'package:ecommerce_shop/Authentication/login_screen.dart';
import 'package:ecommerce_shop/Authentication/profile_edit.dart';
import 'package:ecommerce_shop/provider_controller.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final colorTheme = Provider.of<Cartprovider>(context);
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        elevation: 0,
        centerTitle: false,
        leading:const Padding(
          padding: EdgeInsets.all(5.0),
          child: CircleAvatar(backgroundColor: Colors.white,radius: 60,),
        ),
        title: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.start,
          children: const [
            Text('Bimpong Emmanuel'),
            Text('bimponge38@gmail.com'),
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
        padding: const EdgeInsets.all(15.0),
        child: Column(
          children: [
            SizedBox(
              height: 50,
              width: MediaQuery.of(context).size.width,
              child: Card(
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    children: const [
                      Icon(Icons.payment,color:Color(0xE1E43C08) ,),
                      SizedBox(width: 10,),
                      Text('Payment Method'),
                    ],
                  ),
                ),
              ),
            ),
            const SizedBox(height: 20,),
            SizedBox(
              height: 50,
              width: MediaQuery.of(context).size.width,
              child: Card(
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    children: const [
                      Icon(Icons.menu,color:Color(0xE1E43C08) ,),
                      SizedBox(width: 10,),
                      Text('Order History'),
                    ],
                  ),
                ),
              ),
            ),
            const SizedBox(height: 20,),
             SizedBox(
              height: 50,
              width: MediaQuery.of(context).size.width,
               child: Card(
                 child: Padding(
                   padding: const EdgeInsets.all(8.0),
                   child: Row(
                    children: const [
                      Icon(Icons.delivery_dining_sharp,color:Color(0xE1E43C08) ,),
                      SizedBox(width: 10,),
                      Text('Delivery Status'),
                    ],
                             ),
                 ),
               ),
             ),
            const SizedBox(height: 20,),
             SizedBox(
              height: 50,
              width: MediaQuery.of(context).size.width,
               child: Card(
                 child: Padding(
                   padding: const EdgeInsets.all(8.0),
                   child: Row(
                    children: const [
                      Icon(Icons.language,color:Color(0xE1E43C08) ,),
                      SizedBox(width: 10,),
                      Text('Language'),
                    ],
                    ),
                 ),
               ),
             ),
            
            const SizedBox(height: 20,),
             SizedBox(
              height: 50,
              width: MediaQuery.of(context).size.width,
               child: Card(
                 child: Padding(
                   padding: const EdgeInsets.all(8.0),
                   child: Row(
                    children: const [
                      Icon(Icons.lock,color:Color(0xE1E43C08) ,),
                      SizedBox(width: 10,),
                      Text('Privacy Policy'),
                    ],
                    ),
                 ),
               ),
             ),
           
              const SizedBox(height: 20,),
            GestureDetector(
              child: SizedBox(
                height: 50,
                width: MediaQuery.of(context).size.width,
                child: Card(
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Row(
                      children: const [
                        Icon(Icons.star,color:Color(0xE1E43C08) ,),
                        SizedBox(width: 10,),
                        Text('Change Theme'),
                      ],
                    ),
                  ),
                ),
              ),
              onTap: (){
                showBottomSheet(context: context, builder: (context) => SizedBox(
                  height: 100,
                  width: MediaQuery.of(context).size.width,
                  child: Card(
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Row(
                        children: [
                          Text('Dark Mode',style: TextStyle(fontSize: 20),),
                          SizedBox(width: 20,),
                          Switch.adaptive(value: colorTheme.isDarkModeClick, onChanged: (value) {
                            Navigator.pop(context);
                             colorTheme.setTheme(value);},)
                        ],
                      ),
                    ),
                  ),
                ),);
              },
            ),
            const SizedBox(height: 30,),
           Padding(
             padding: const EdgeInsets.all(8.0),
             child: TextButton(
              style: TextButton.styleFrom(backgroundColor:const Color(0xE1E43C08), shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10))),
              onPressed: (){
                showDialog(context: context, builder: (context) {
                  return AlertDialog(
                    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
                    title: Text('Log out'),
                    content: Text('Are you sure you want to log out'),
                    actions: [
                      TextButton(onPressed: (){
                        Navigator.push(context, MaterialPageRoute(builder: (context) => LogInPage(),));
                      },
                       child: Text('Yes',style: TextStyle(color: Colors.orange),)),
                       TextButton(onPressed: (){
                        Navigator.pop(context);
                       }, child: Text('No'))
                    ],
                  );
                },);
              },
              child: const Center(child: Text('Log out',style: TextStyle(color: Colors.white),))),
           )
          ],
        ),
      ),
    );
  }
}