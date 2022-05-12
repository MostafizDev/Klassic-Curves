import 'package:findbizdata/Core/Utilities/AppConstrains.dart';
import 'package:findbizdata/Core/Utilities/AppRoutes.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SplashScreen extends StatefulWidget {
  SplashScreen({Key? key}) : super(key: key);

  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  double width = 10;
  @override
  void initState() {
    initiateSplashAnimation();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            AnimatedContainer(
              width: width,
              duration: Duration(seconds: 1),
              child: Image.asset(
                'assets/images/logo.jpg',
                fit: BoxFit.contain,
                height: 150,
                width: 150,
              ),
            ),
            AppConstrains.height15,
            Text('Klassic Curves', style: Get.textTheme.bodyMedium!.copyWith(fontWeight: FontWeight.w500),)
          ],
        ),
      ),
    );
  }

  void initiateSplashAnimation() async {
    await Future.delayed(Duration(milliseconds: 10)).then((_) {
      setState(() {
        width = MediaQuery.of(context).size.width - 50;
      });
    });
    await Future.delayed(Duration(milliseconds: 1500));
    Get.offAllNamed(AppRoutes.HOME);
  }
}
