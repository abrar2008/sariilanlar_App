import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:sariilanlar/Screens/pricings_screen.dart';
import 'package:sariilanlar/Screens/splash_screen.dart';
import 'package:sariilanlar/utils/color_schemes.dart';

void main() {
  SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(
       // navigation bar color
      statusBarColor: primaryColor,
     systemNavigationBarIconBrightness:Brightness.dark ,
     
      statusBarIconBrightness: Brightness.dark
     ));
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  
  @override
  Widget build(BuildContext context) {

    return MaterialApp(

      title: 'sarıilanlar',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const Splash(),
    );
  }
}
