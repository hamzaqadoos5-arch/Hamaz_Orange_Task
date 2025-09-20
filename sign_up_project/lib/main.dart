import 'package:flutter/material.dart';
import 'package:sign_up_project/sign_up/view/sign_up.dart';

void main()
{

runApp(Signup_project());
}

class Signup_project extends StatelessWidget {
  const Signup_project({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
theme: ThemeData(scaffoldBackgroundColor: Colors.white,),
      home: SignUp()

    );
  }
}