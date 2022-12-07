import 'package:device_preview/device_preview.dart';
import 'package:ecommerce_shop/buttomnavigation/navbar.dart';
import 'package:ecommerce_shop/provider_controller.dart';
import 'package:ecommerce_shop/splash-view.dart';
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
      cardColor: colorTheme.isDarkModeClick ? Colors.white:Colors.black,
      textTheme: Theme.of(context).textTheme.apply(
        bodyColor: colorTheme.isDarkModeClick ? Colors.black:Colors.white,
      ),
      hintColor:colorTheme.isDarkModeClick ? Colors.black:Colors.white,
      focusColor: colorTheme.isDarkModeClick ? Colors.grey:Colors.orange,
      dialogBackgroundColor:colorTheme.isDarkModeClick ? Colors.white:Colors.black,
      checkboxTheme: CheckboxThemeData(side: BorderSide(color: colorTheme.isDarkModeClick ? Colors.black:Colors.orange)),
      iconTheme: IconThemeData(color: colorTheme.isDarkModeClick ? Colors.black:Colors.white),
      appBarTheme: AppBarTheme(backgroundColor: colorTheme.isDarkModeClick ? Color(0xE1E43C08):Colors.black),
      bottomNavigationBarTheme: BottomNavigationBarThemeData(backgroundColor: colorTheme.isDarkModeClick ? Color(0xE1E43C08):Colors.black,selectedItemColor: colorTheme.isDarkModeClick ? Colors.black :Color(0xE1E43C08) )
      ),
      
      darkTheme: ThemeData.dark(),
      home:  const MyNav() ,
    );
  }
}


