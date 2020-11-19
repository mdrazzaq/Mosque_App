import 'package:flutter/material.dart';
import 'package:task_app/pages/login_page.dart';
import 'package:task_app/pages/oneboarding_sceen.dart';
import 'package:task_app/pages/singup_sceen.dart';
import 'package:task_app/pages/varification_page.dart';

void main(){
  runApp(MyApp());
}
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        fontFamily: 'Brand-Regular',
      ),
      initialRoute: OneboardingSceen.id,
      routes: {
        OneboardingSceen.id:(context)=>OneboardingSceen(),
        LoginPage.id:(context)=>LoginPage(),
        SingupSceen.id:(context)=>SingupSceen(),
        VarificationPage.id:(context)=>VarificationPage(),
      },
    );
  }
}
