import 'package:flutter/material.dart';

AppBar eShopAppBar(BuildContext context) {
    return AppBar(
    elevation: 0.0,
    automaticallyImplyLeading: false,
   centerTitle: false,
   leading: IconButton(onPressed: (){
    Navigator.pop(context);
   }, icon: const Icon(Icons.arrow_back_ios,color: Colors.white,)) ,
 
  );
  }


  
    
