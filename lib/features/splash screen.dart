import 'dart:async';
import 'package:flutter/material.dart';

import 'login screen.dart';


class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {

    Future.delayed(
        const Duration(seconds: 5) ,(){
       Navigator.pushReplacement(
           context,
         MaterialPageRoute(
             builder: (context)=> const LoginScreen()
         )
       );
    }
    );

    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Spacer(),

            Image.asset("assets/images/Vector.png"),
            const Spacer(),

        Image.asset("assets/images/Group 22.png"),

            const SizedBox(height: 20),
          ],
        ),
      ),
    );
  }
}
