import 'package:flutter/material.dart';

class LoginProvider extends ChangeNotifier {
  final TextEditingController email = TextEditingController();

  final TextEditingController password = TextEditingController();

  final loginkey = GlobalKey<FormState>();

  bool pswdsecure = true;
  void obsecurepassword() {
    pswdsecure = !pswdsecure;
    notifyListeners();
  }

}
