import 'package:flutter/material.dart';
import 'login.dart'; // Import your custom widget file
import 'home.dart'; // Import your custom widget file
import 'signup.dart'; // Import your custom widget file
import 'verify.dart'; // Import your custom widget file
import 'schoolinfo.dart'; // Import your custom widget file

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: LoginWidget(),
      routes: {
        'home':(context) => HomeWidget(),
        'login':(context) => LoginWidget(),
        'signup':(context) => SignupWidget(),
        'verify':(context) => EmailVerificationWidget(),
        'school':(context) => SchoolWidget(),
      },
    );
  }
}
