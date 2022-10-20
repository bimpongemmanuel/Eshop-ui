
import 'package:ecommerce_shop/Authentication/login_screen.dart';
import 'package:ecommerce_shop/Details_screens/buy_now.dart';
import 'package:ecommerce_shop/Details_screens/womenbag_details.dart';
import 'package:ecommerce_shop/buttomnavigation/category.dart';
import 'package:ecommerce_shop/buttomnavigation/navbar.dart';
import 'package:ecommerce_shop/buttomnavigation/search.dart';
import 'package:ecommerce_shop/commons/home_card.dart';
import 'package:ecommerce_shop/screen/carousel_dot.dart';
import 'package:ecommerce_shop/screen/homepage.dart';
import 'package:ecommerce_shop/screen/profile.dart';
import 'package:ecommerce_shop/splash-view.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:device_preview/device_preview.dart';

void main() {
  runApp(
     DevicePreview(
    enabled: !kReleaseMode,
    builder: (context) =>
    MaterialApp(
      useInheritedMediaQuery: true,
      locale: DevicePreview.locale(context),
      builder: DevicePreview.appBuilder,
      darkTheme: ThemeData.dark(),
      debugShowCheckedModeBanner: false,
      theme: ThemeData(scaffoldBackgroundColor: const Color(0xDFF0C0B2)),
      home: const SplashView(),
    )
     )
  );
}

