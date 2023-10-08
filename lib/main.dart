import 'package:flutter/material.dart';
import 'package:ss_assignment/provider/payments_provider.dart';
import 'package:ss_assignment/screens/login_screen.dart';
import 'package:ss_assignment/screens/promoter_screen.dart';
import 'package:ss_assignment/screens/splash_screen.dart';
import 'package:provider/provider.dart';




void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
   return 
   
   MultiProvider(
      providers: [
        ListenableProvider(
          create: (_) => DrrProvider(),
        ),],
        
        child: MaterialApp(
      theme: ThemeData(
        primarySwatch: Colors.red,
      ),
      debugShowCheckedModeBanner: false,
      home: const LoginScreen(),
      
   ),);
       
       
        }
}
