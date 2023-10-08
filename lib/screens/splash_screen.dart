


import 'dart:async';

import 'package:flutter/material.dart';
import 'package:ss_assignment/screens/login_screen.dart';


class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  @override
  void initState() {
    super.initState();
    timer();
  }

  timer() {
    Timer(const Duration(seconds: 3),
        () => Navigator.of(context).push(MaterialPageRoute(builder: (ctx) => const LoginScreen())));
  }

  @override
  void dispose() {
    // TODO: implement dispose
    timer().dispose();
    super.dispose();
  }


  @override
  Widget build(BuildContext context) {
    var deviceHeight = MediaQuery.of(context).size.height;
    var deviceWidth = MediaQuery.of(context).size.width;
    return Scaffold(
      body: 
       Center(
          child: Image.asset(
            'assets/images/ss_logo.png',
          ),
        
      ),
    );
  }
}
