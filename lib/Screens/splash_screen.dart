import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:sariilanlar/utils/constants.dart';
import 'login_screen.dart';

class Splash extends StatefulWidget {
  const Splash({Key? key}) : super(key: key);
  @override
  _SplashState createState() => _SplashState();
}

class _SplashState extends State<Splash> {
  @override
  Widget build(BuildContext context) {
    Timer(
      const Duration(seconds: 5),
      () => Navigator.of(context).pushReplacement(
        MaterialPageRoute(
          builder: (BuildContext context) => const LoginScreen(),
        ),
      ),
    );

    //Full_Logo
    return SafeArea(
      child: Scaffold(
        body: Scaffold(
          body: Container(
            decoration: BoxDecoration(
              image: DecorationImage(
                  fit: BoxFit.fill,
                  image: AssetImage('assets/images/Slpace.png')),
            ),
            width: sizeWidth(context),
            // color: Color(0xfffdc20e), //Colors.yellow,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                //logoImg,

                Container(
                  child: SvgPicture.asset("assets/logo1.svg"),
                ),

                // Container(
                //   width: 250.00,
                //   height: 250.00,
                //   child: SvgPicture.asset("assets/icons/website.svg"),
                // ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
