import 'package:ecommerce_shop/Authentication/login_screen.dart';
import 'package:ecommerce_shop/buttomnavigation/homepage.dart';
import 'package:flutter/material.dart';
import 'package:introduction_screen/introduction_screen.dart';

class OnboardingPage extends StatelessWidget {
  const OnboardingPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: IntroductionScreen(
          pages: [
            PageViewModel(
              title: 'MShop',
              body: 'This is an online shop that brings you all your needs to your door step',
              image: Image.asset('images/img.png'),
              decoration: getPageDecration(),
            ),
            PageViewModel(
              title: 'MShop',
              body: 'Just place your order, we will deliver, to you in a seconds',
              image: Image.asset('images/img1.png'),
              decoration: getPageDecration(),
            ),
            PageViewModel(
              title: 'MShop',
              body: 'All your needs at one place',
              image: Image.asset('images/img2.png'),
              decoration: getPageDecration(),
            ),
          ],
          done: const Text('Done',style:  TextStyle(color: Colors.black,fontSize: 20,fontWeight: FontWeight.bold),),
          onDone: () => Navigator.push(context, MaterialPageRoute(builder: (context) => const LogInPage(),),),
          showSkipButton: true,
          skip: const Text('Skip',style:  TextStyle(color: Colors.black,fontSize: 20,fontWeight: FontWeight.bold),),
          onSkip:() => Navigator.push(context, MaterialPageRoute(builder: (context) => const LogInPage(),),),
          showNextButton: true, 
          next: const Text('Next',style:  TextStyle(color: Colors.white,fontSize: 20,fontWeight: FontWeight.bold),),
          nextStyle: TextButton.styleFrom(backgroundColor: const Color(0xE1E43C08)),
          dotsDecorator: getDotsDecoration(),
          // onChange: (value) => print('Page $value selected') ,
          skipOrBackFlex: 0,
          nextFlex: 0,
        ),
      ),
    );
  }
  PageDecoration getPageDecration() => const PageDecoration(
    titleTextStyle: TextStyle(fontSize: 28,fontWeight: FontWeight.bold),
    imagePadding:  EdgeInsets.all(24),
    pageColor: const Color(0xDFF0C0B2),
  );

  DotsDecorator getDotsDecoration() => DotsDecorator(
    color: const Color(0xFFBDBDBD),
    size: const Size(10, 10),
    activeSize: const Size(22, 10),
    activeShape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(24))
  );

}