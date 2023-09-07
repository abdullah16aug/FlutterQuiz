import 'package:flutter/material.dart';
import 'login.dart'; // Import your custom widget file
import 'home.dart'; // Import your custom widget file
import 'signup.dart'; // Import your custom widget file
import 'verify.dart'; // Import your custom widget file
import 'schoolinfo.dart'; // Import your custom widget file
import 'homescreen/loginsignup.dart';
import 'homescreen/fillname.dart';
import 'homescreen/fillregion.dart';
import 'homescreen/fillprofile.dart';
import 'homescreen/teacher.dart';
void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: MyWidget(),
      routes: {
        'home':(context) => HomeWidget(),
        'login':(context) => LoginWidget(),
        'signup':(context) => SignupWidget(),
        'verify':(context) => EmailVerificationWidget(),
        'school':(context) => SchoolWidget(),
        'loginsignup':(context) => MyWidget(),
        'fillname':(context) => FillName(),
        'fillregion':(context) => Region(),
        'fillprofile':(context) => Profile(),
        'teacher':(context) => Teacher(),
      },
    );
  }
}
