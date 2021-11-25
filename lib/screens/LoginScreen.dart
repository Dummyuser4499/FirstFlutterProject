import 'package:demo/widgets/auth_ui.dart';
import 'package:flutter/material.dart';
import 'package:flutter_signin_button/flutter_signin_button.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.cyan.shade900,
      body: Center(
        child: Column(
          children: [
            Expanded(child:Container(
              height: MediaQuery.of(context).size.height,
              width: MediaQuery.of(context).size.width,
            )),
            Expanded(
                child: Container(
                  child: Authui(),
                ))
          ],
        ),
      ),
    );
  }
}
