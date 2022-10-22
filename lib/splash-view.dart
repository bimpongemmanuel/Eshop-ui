// ignore: file_names
import 'dart:async';
import 'package:ecommerce_shop/onboardingscreen/onboarding_screen.dart';
import 'package:flutter/material.dart';

class SplashView extends StatefulWidget {
  const SplashView({Key? key}) : super(key: key);

  @override
  State<SplashView> createState() => _SplashViewState();
}

class _SplashViewState extends State<SplashView> {
  @override
  void initState() {
    Timer(const Duration(seconds: 5), () => Navigator.push(context, MaterialPageRoute(builder: (context) => const OnboardingPage(),)) );
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: textColor(),
      body:const Center(child: Text('MShop',style: TextStyle(fontSize: 40,fontWeight: FontWeight.bold,color: Colors.white),),)
    );
  }

  Color textColor() => const Color(0xE1E43C08);
}
  
