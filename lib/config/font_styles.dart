
import 'package:flutter/material.dart';
import 'package:ss_assignment/config/color_constants.dart';

class Styles{

  TextStyle megaTitleStyle(Color color){
    return TextStyle(fontSize: 50,fontWeight: FontWeight.bold,color: color,letterSpacing: 0.5);
  }
   TextStyle boldTitleStyle(Color color){
    return TextStyle(fontSize: 32,fontWeight: FontWeight.bold,color: color,letterSpacing: 0.5);
  }

   TextStyle mediumTextStyle(Color color){
    return TextStyle(fontSize: 14,fontWeight: FontWeight.w400,color: color,letterSpacing: 0.5);
  }
  
   TextStyle appBarStyle(Color color){
    return TextStyle(fontSize: 20,fontWeight: FontWeight.w500,color: color,letterSpacing: 0.5);
  }



  ButtonStyle buttonStyle(Color color){

    return ElevatedButton.styleFrom(
      
      backgroundColor: Primary_Color,
      shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(30),
                      

      )
    );
  }
}