import 'package:flutter/material.dart';
import 'package:ss_assignment/config/color_constants.dart';
import 'package:ss_assignment/widgets/auth_card.dart';

import '../config/font_styles.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    var deviceSize = MediaQuery.of(context).size;
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: Image.asset(
                    'assets/images/badge.png',
                    height: deviceSize.height * 0.1,
                    width: deviceSize.width,
                    color: Colors.yellow,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(bottom:10.0),
                  child: RichText(
                    text: TextSpan(
                      text: 'SS ',
                      style: Styles().megaTitleStyle(Primary_Color),
                      children: [
                        TextSpan(
                          text: 'MOBILE',
                          style: Styles().boldTitleStyle(Colors.black),
                        )
                      ],
                    ),
                  ),
                ),
                AuthCard(),
        
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Image.asset('assets/images/shop.png'),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
