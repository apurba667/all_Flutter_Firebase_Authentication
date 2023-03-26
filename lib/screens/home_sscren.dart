import 'package:allfirebaseauth/servises/firebase_auth_methods.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final user = context.read<FirebaseAuthMethods>().user;
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
        if(!user.isAnonymous && user.phoneNumber == null) Text(user.email!),
        if(!user.isAnonymous && user.phoneNumber == null)
          Text(user.providerData[0].providerId),
        if(user.phoneNumber != null) Text(user.phoneNumber!),
        Text(user.uid),
        if(!user.emailVerified && !user.isAnonymous)
          ElevatedButton(onPressed: (){
            context.read<FirebaseAuthMethods>().sendEmailVerificaton(context);
          }, child: Text("Verify Email")),
          ElevatedButton(
              onPressed: () {
                context.read<FirebaseAuthMethods>().signOut(context);
              },
              child: Text("Sign Out")),
          ElevatedButton(
              onPressed: () {
                context.read<FirebaseAuthMethods>().deleteAccount(context);
              },
              child: Text("Delete Account")),
      ],)
    );
  }
}
