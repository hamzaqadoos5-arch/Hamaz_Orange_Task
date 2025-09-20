import 'package:flutter/material.dart';
import 'package:sign_up_project/sign_up/widget/ElevatedButton_SignUp.dart';
import 'package:sign_up_project/sign_up/widget/Sign_Up_Text.dart';
import 'package:sign_up_project/sign_up/widget/sign_up_form.dart';

class SignUp extends StatelessWidget {
  const SignUp({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:  Padding(
        padding: const EdgeInsets.all(8.0),
        child: CustomScrollView(
          slivers: [
            SliverToBoxAdapter(child: SizedBox(height: 150),),
            SliverToBoxAdapter(child: SignUpText()),
            SliverToBoxAdapter(child: SizedBox(height: 50),),
            SliverToBoxAdapter(child: SignUpForm(lableText: "First Name",)),
         SliverToBoxAdapter(child:SignUpForm(lableText:   "Last Name",)),
         SliverToBoxAdapter(child:SignUpForm(lableText:   "Email",)),
         SliverToBoxAdapter(child:SignUpPass(lableText: "Password",)),
          SliverToBoxAdapter(child: SizedBox(height: 30),),
          SliverToBoxAdapter(child: ElevatedButtonSignUp( textbut: "Sign Up"))
          ]
        ),
      ),
    );
  }
}






