import 'package:ecommerce_shop/buttomnavigation/navbar.dart';
import 'package:flutter/material.dart';

class ProfileEdit extends StatelessWidget {
  const ProfileEdit({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var outlinedInputBorder = OutlineInputBorder(
      borderRadius: BorderRadius.circular(15),
      borderSide: const BorderSide(color:   Color(0xE1E43C08),)
    );
    return Scaffold(
      appBar: AppBar(
        // centerTitle: false,
        elevation: 0,
        backgroundColor: const Color(0xE1E43C08),
        leading: IconButton(onPressed: (){
          Navigator.push(context, MaterialPageRoute(builder: (context) => const MyNav()));
        },
         icon: const Icon(Icons.arrow_back_ios)),
         title: 
             const Text('Edit Profile'),
      ),
      body:Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            imageProfile(),
            const SizedBox(height: 10,),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextField(
                cursorColor: Colors.white,
                decoration: InputDecoration(
                  focusedBorder: outlinedInputBorder,
                  border: outlinedInputBorder,
                  hintText: 'FullName',
                ),
              ),
            ),
             const SizedBox(height: 10,),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextField(
                cursorColor: Colors.white,
                decoration: InputDecoration(
                  focusedBorder: outlinedInputBorder,
                  border: outlinedInputBorder,
                  hintText: 'Email',
                ),
              ),
            ),
             const SizedBox(height: 10,),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextField(
                obscureText: true,
                cursorColor: Colors.white,
                decoration: InputDecoration(
                  focusedBorder: outlinedInputBorder,
                  border: outlinedInputBorder,
                  hintText: 'Password',
                ),
              ),
            ),
             const SizedBox(height: 10,),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextField(
                cursorColor: Colors.white,
                decoration: InputDecoration(
                  focusedBorder: outlinedInputBorder,
                  border: outlinedInputBorder,
                  hintText: 'Phone',
                ),
              ),
            ),
             const SizedBox(height: 15,),
        Padding(
          padding: const EdgeInsets.all(10.0),
          child: TextButton(
            style: TextButton.styleFrom(backgroundColor:const Color(0xE1E43C08),shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)) ),
            onPressed: (){},
           child: const Center(child:  Text('Save',style: TextStyle(color: Colors.white),))),
        ),
          ],
        ),
      )
    );
  }
}




Widget imageProfile (){
  return Center(
    child: Stack(
      children: const [
        CircleAvatar(
          radius: 80.0,
          backgroundImage: NetworkImage('https://cdn-icons-png.flaticon.com/512/149/149071.png'),
        ),
        Positioned(
          bottom: 15.0,
          right: 15.0,
          child: Icon(Icons.camera_alt,size: 40,color:  Color(0xE1E43C08),))
      ],
    ),
  );
}