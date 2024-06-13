// ignore_for_file: prefer_const_constructors

import 'package:financeapp/controller/provider/login_provider.dart';
import 'package:financeapp/model/coolors.dart';
import 'package:financeapp/view/login/login_page.dart';
import 'package:financeapp/view/splashscreen/splash_screen.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:sizer/sizer.dart';

void main(List<String> args) {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return Sizer(
      builder: (context, orientation, deviceType) {
        return MultiProvider(
          providers: [
            ChangeNotifierProvider(
              create: (context) => LoginProvider(),
            ),
          ],
          child: MaterialApp(
            theme: ThemeData(scaffoldBackgroundColor: backgroundcoolor),
            debugShowCheckedModeBanner: false,
            title: 'name route',
            initialRoute: '/',
            routes: {
              '/': (context) => const SplashScreen(),
              '/login': (context) => const LoginPage()
            },
          ),
        );
      },
    );
  }
}
