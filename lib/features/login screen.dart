import 'package:flutter/material.dart';

import '../cores/themes/app_colors.dart';
import 'home screen.dart';


class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return  SafeArea(
      child: Scaffold(
         resizeToAvoidBottomInset: false,
        backgroundColor: Colors.white,
        body: Center(
          child:  Padding(
            padding: const EdgeInsets.symmetric(horizontal: 24),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 63),
              child:  Image.asset("assets/images/Vector.png"),
            ),
            const SizedBox(height: 10),
            TextField(
              decoration: InputDecoration(
                labelText: "Mobile Phone or Email address",
                filled: true,
                fillColor:  Colors.white24,
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(15),
                ),
              ),
            ),
           const SizedBox(height: 43),
            TextField(
              decoration: InputDecoration(
                filled: true,
                fillColor: Colors.white24,
                labelText: "Password",
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(15),
                ),
                suffixIcon:const Icon(Icons.visibility_off),
              ),
            ),
            const SizedBox(height: 24),
            SizedBox(
              width: double.infinity,
              child: ElevatedButton(
                  onPressed: (){
                    Navigator.of(context).push(
                      MaterialPageRoute(
                          builder: (context) => const HomeScreen(),
                      )
                    );
                  },
                style: ElevatedButton.styleFrom(
                  padding: const EdgeInsets.all(16),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20),
                  ),
                  backgroundColor: AppColors.primaryColor
                ),
                  child: const Text("login",
                    style: TextStyle(
                        color: Colors.white,
                    fontSize: 16
                    ),
                  ),

               ),
            ),
            const SizedBox(height: 12),
            // Forgotten password link
            TextButton(
              onPressed: () {},
              child: const Text(
                "Forget Password?",
                style: TextStyle(
                    color: Color(0xff898F9C),
                  fontSize: 16,
                  fontWeight: FontWeight.w500
              ),
            ),
            ),
            const Spacer(),

            const SizedBox(height: 24),

              SizedBox(
                width: double.infinity,
                child: ElevatedButton(
                  onPressed: () {},
                  style: ElevatedButton.styleFrom(
                      padding: const EdgeInsets.all(16),
                      side: BorderSide(
                        color: AppColors.primaryColor
                      ),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20),
                      ),
                    backgroundColor: Colors.white
                  ),
                child: Text(
                  "Create Account",
                  style: TextStyle(
                      color: AppColors.primaryColor,
                    fontSize: 16,
                  ),
                ),
                ),
              ),
             const SizedBox(height: 16),
            Image.asset("assets/images/Meta Logo.png"),
            const SizedBox(height: 20),
          ]
        ),
        ),
          ),
        ),
    );
  }
}
