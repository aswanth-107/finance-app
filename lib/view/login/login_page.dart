// ignore_for_file: prefer_const_constructors

import 'package:financeapp/controller/provider/login_provider.dart';
import 'package:financeapp/model/coolors.dart';
import 'package:financeapp/view/widgets/customtextformfield.dart';
import 'package:financeapp/view/widgets/password_secure.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Consumer<LoginProvider>(
      builder: (context, loginstage, child) => Scaffold(
        backgroundColor: backgroundcoolor,
        body: Padding(
          padding: const EdgeInsets.only(left: 16, right: 16),
          child: Form(
            key: loginstage.loginkey,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                //email
                // TextFormField(
                //   controller: loginstage.email,
                //   decoration: InputDecoration(
                //     border: OutlineInputBorder(),
                //     label: Text('Email'),
                //     labelStyle: TextStyle(
                //         color: textcoolor, fontWeight: FontWeight.w500),
                //   ),
                //   keyboardType: TextInputType.emailAddress,
                // ),
                Customtextformfield(
                    controller: loginstage.email, labelTxt: 'Email'),
                SizedBox(
                  height: 30,
                ),
                //password
                TextFormField(
                  controller: loginstage.password,
                  decoration: InputDecoration(
                      border: OutlineInputBorder(),
                      label: Text('Password'),
                      labelStyle: TextStyle(
                          color: textcoolor, fontWeight: FontWeight.w500),
                      suffixIcon: PasswordSecure()),
                  keyboardType: TextInputType.emailAddress,
                  obscureText:
                      loginstage.pswdsecure, // to hide the input password
                  maxLength: 10, //length of input
                ),
                ElevatedButton(onPressed: () {}, child: Text('Login'))
              ],
            ),
          ),
        ),
      ),
    );
  }
}
