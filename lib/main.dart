import 'package:device_preview/device_preview.dart';
import 'package:ecommerce_shop/buttomnavigation/navbar.dart';
import 'package:ecommerce_shop/commons/colors.dart';
import 'package:ecommerce_shop/provider_controller.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(
     MultiProvider(
      providers:[
        ChangeNotifierProvider<Cartprovider>(create: (_) => Cartprovider())
      ],
       child: DevicePreview( 
         enabled: !kReleaseMode,
         builder: (context) => const MyApp()
       ),
     )
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    final colorTheme = Provider.of<Cartprovider>(context);
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      useInheritedMediaQuery: true,
      locale: DevicePreview.locale(context),
      builder: DevicePreview.appBuilder,
      theme: ThemeData(scaffoldBackgroundColor: colorTheme.isDarkModeClick ? Colors.white:Colors.black,
      cardColor: colorTheme.isDarkModeClick ? Colors.white : Colors.black,
      textTheme:Theme.of(context).textTheme.apply(
        bodyColor: colorTheme.isDarkModeClick ? Colors.black : Colors.white
      ),
      iconTheme: IconThemeData(color: colorTheme.isDarkModeClick ? Colors.black :Colors.white),
      bottomNavigationBarTheme: BottomNavigationBarThemeData(backgroundColor: colorTheme.isDarkModeClick ? AppColor.orange:Colors.black,selectedItemColor: colorTheme.isDarkModeClick ? Colors.black : AppColor.orange),
      appBarTheme: AppBarTheme(backgroundColor: colorTheme.isDarkModeClick ? AppColor.orange : Colors.black),
      hintColor: colorTheme.isDarkModeClick ? Colors.black :Colors.white,
      focusColor: colorTheme.isDarkModeClick ? Colors.orange : AppColor.orange
      ),
      darkTheme: ThemeData.dark(),
      home: const MyNav() ,
    );
  }
}


 