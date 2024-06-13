import 'package:financeapp/controller/provider/login_provider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class PasswordSecure extends StatelessWidget {
  const PasswordSecure({super.key});
  

  @override
  Widget build(BuildContext context) {
    return Consumer<LoginProvider>(
        builder: (context, visibiltypswd, child) => IconButton(
            onPressed: () {
              visibiltypswd.obsecurepassword();
            },
            icon:visibiltypswd.pswdsecure ? const Icon(Icons.visibility):const Icon(Icons.visibility_off)));
  }
}
