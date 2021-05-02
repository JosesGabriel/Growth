import 'package:flutter/material.dart';

class SplashScreen extends StatefulWidget {
  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen>
    with TickerProviderStateMixin {
  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;

    return Scaffold(
      backgroundColor: Color(0xFF0CA498),
      body: SafeArea(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ScaleTransition(
                scale: AnimationController(
                  duration: const Duration(seconds: 1),
                  lowerBound: 0.7,
                  upperBound: 1,
                  vsync: this,
                )..repeat(reverse: true),
                child: CircleAvatar(
                  radius: width * 0.2,
                  foregroundImage: AssetImage('assets/images/growth.png'),
                ),
              ),
              Text('Growth')
            ],
          ),
        ),
      ),
    );
  }
}
