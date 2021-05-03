import 'package:flutter/material.dart';
import 'package:growthph/screens/introduction.dart';
import 'package:page_transition/page_transition.dart';

class SplashScreen extends StatefulWidget {
  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen>
    with TickerProviderStateMixin {
  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback(
      (_) {
        Future<void>.delayed(const Duration(milliseconds: 2000), () {
          Navigator.push(
            context,
            PageTransition<dynamic>(
              type: PageTransitionType.fade,
              child: const IntroductionScreen(),
              duration: const Duration(milliseconds: 600),
            ),
          );
        });
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    TextTheme textTheme = Theme.of(context).textTheme;

    return Scaffold(
      backgroundColor: Color(0xFF0CA498),
      body: SafeArea(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              FadeTransition(
                opacity: AnimationController(
                  duration: const Duration(seconds: 1),
                  value: 1,
                  vsync: this,
                ),
                child: Image.asset(
                  'assets/images/pottedplant.png',
                  width: width * 0.4,
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                  'GrowthPH',
                  style: textTheme.headline4.copyWith(
                    color: Colors.white,
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
