import 'package:flutter/material.dart';

class SignInWithFacebook extends StatefulWidget {
  const SignInWithFacebook({Key? key}) : super(key: key);

  @override
  State<SignInWithFacebook> createState() => _SignInWithFacebookState();
}

class _SignInWithFacebookState extends State<SignInWithFacebook> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Center(child: Text("Facebook Login"),),
    );
  }
}
