import 'package:ecommerce_shop/buttomnavigation/category.dart';
import 'package:ecommerce_shop/buttomnavigation/search.dart';
import 'package:ecommerce_shop/buttomnavigation/homepage.dart';
import 'package:ecommerce_shop/buttomnavigation/profile.dart';
import 'package:flutter/material.dart';

class MyNav extends StatefulWidget {
  const MyNav({Key? key}) : super(key: key);

  @override
  State<MyNav> createState() => _MyNavState();
}

class _MyNavState extends State<MyNav> {
   int _currentIndex = 0;
    List<Widget> myList =[
      HomeScreen(),
      CategoryScreen(),
      SearchPage(),
      ProfileScreen(),
    ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: IndexedStack(
        index: _currentIndex,
        children:myList,
      ),
     bottomNavigationBar: BottomNavigationBar(
      backgroundColor:  const Color(0xE1E43C08),
      type: BottomNavigationBarType.fixed,
      selectedItemColor:  Colors.black,
      unselectedItemColor:  Colors.white,
      showUnselectedLabels: false,
      currentIndex: _currentIndex,
      
      onTap: (index){
        setState(() {
          _currentIndex = index;
        });
      },
      items: [
        BottomNavigationBarItem(icon: Icon(Icons.home),label: 'Home'),
        BottomNavigationBarItem(icon: Icon(Icons.category),label: 'Category'),
        BottomNavigationBarItem(icon: Icon(Icons.search),label: 'Cart'),
        BottomNavigationBarItem(icon: Icon(Icons.person),label: 'Profile'),
      ]),
    );
  }
}