import 'package:flutter/material.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Center(
          child: Column(
            mainAxisAlignment: .center,
            children: [
              SizedBox(height: 210,),
              Image.asset('assets/images/ostad.png',height: 300, width: 300,),
              SizedBox(height: 300,),

              Column(
                children: [
                  CircularProgressIndicator(),
                  SizedBox(height: 17,),
                  Text('v 1.0.1'),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
