import 'package:allfirebaseauth/screens/login_email_password.dart';
import 'package:allfirebaseauth/screens/otp_number.dart';
import 'package:allfirebaseauth/screens/signin_with_facebook.dart';
import 'package:allfirebaseauth/screens/signup_email_password.dart';
import 'package:allfirebaseauth/servises/firebase_auth_methods.dart';

import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: EdgeInsets.symmetric(horizontal: 68),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            ElevatedButton(
                onPressed: () {
                  Navigator.of(context).push(MaterialPageRoute(
                      builder: (context) => LoginWithEmailAndPassword()));
                },
                child: Text("Sign in With email and password")),
            ElevatedButton(
                onPressed: () {
                  Navigator.of(context).push(MaterialPageRoute(
                      builder: (context) => SignInWithFacebook()));
                },
                child: Text("Sign in With Facebook")),
            ElevatedButton(
                onPressed: () {
                  Navigator.of(context).push(MaterialPageRoute(
                      builder: (context) => SignUpWithEmailPass()));
                },
                child: Text("Sign up With Email and password")),
            ElevatedButton(
                onPressed: () {
                  Navigator.of(context).push(
                      MaterialPageRoute(builder: (context) => OtpNumber()));
                },
                child: Text("Sign in With number")),
            ElevatedButton(
                onPressed: () {
                  context.read<FirebaseAuthMethods>().signInWithFacebook(context);
                },
                child: Text("Sign in with facebook")),
            ElevatedButton(
                onPressed: () {
                  context.read<FirebaseAuthMethods>().signInAnonymously(context);
                },
                child: Text("Sign in Anonymously")),
            ElevatedButton(
                onPressed: () {
                  context.read<FirebaseAuthMethods>().signInWithGoogle(context);
                },
                child: Text("Sign in Google")),


          ],
        ),
      ),
    );
  }
}
