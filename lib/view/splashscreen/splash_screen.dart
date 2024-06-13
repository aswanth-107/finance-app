import 'package:financeapp/model/coolors.dart';
import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    Future.delayed(const Duration(seconds: 2), () {
      Navigator.pushReplacementNamed(context, '/login');
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                height: 20.h,
                width: 20.h,
                decoration: const BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage('assets/logo/budget.png'))),
              ),
              const SizedBox(
                height: 20,
              ),
              Text(
                'Expenses Manager',
                style: TextStyle(
                    fontSize: 20.sp,
                    fontWeight: FontWeight.w500,
                    color: textcoolor),
              )
            ],
          ),
        ));
  }
}
