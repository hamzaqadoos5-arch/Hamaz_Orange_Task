import 'package:flutter/material.dart';
import 'package:shared_reference_task/Core/database/cache_helper.dart';
import 'package:shared_reference_task/Features/auth/views/Sign_in.dart';
import 'package:shared_reference_task/Features/auth/wedget/ElevatedButton_SignUp.dart';
import 'package:shared_reference_task/Features/auth/wedget/sign_form.dart';
import 'package:shared_reference_task/Features/auth/wedget/sing_text.dart';
import 'package:shared_reference_task/Features/auth/wedget/text_afterButtun.dart';
import 'package:shared_reference_task/Features/home/widget/nav_bar.dart';



class SignUp extends StatefulWidget {
  const SignUp({super.key});

  @override
  State<SignUp> createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
  final _formKey = GlobalKey<FormState>();
 
  final TextEditingController firstNameC = TextEditingController();
  final TextEditingController lastNameC  = TextEditingController();
  final TextEditingController emailC     = TextEditingController();
  final TextEditingController passwordC  = TextEditingController();
@override
  void dispose() {
    firstNameC.dispose();
    lastNameC.dispose();
    emailC.dispose();
    passwordC.dispose();
    
    super.dispose();
  }
 Future<void>_submit()async{
 if (!_formKey.currentState!.validate()) return;


  await CacheHelper.saveData(key: "token", value: "signin");

    await CacheHelper.saveData(key: 'email', value: emailC.text);
    await CacheHelper.saveData(key: 'firstName', value: firstNameC.text);

if(context.mounted)
{
  Navigator.pushReplacement(context, MaterialPageRoute(builder: (_)=>const Home
  ()));
}

 }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:  Padding(
        padding: const EdgeInsets.all(8.0),
        child: CustomScrollView(
          slivers: [
            SliverToBoxAdapter(child: SizedBox(height: 150),),
            SliverToBoxAdapter(child: SignText(text: "Sign up",)),
            SliverToBoxAdapter(child: SizedBox(height: 50),),
           SliverToBoxAdapter(
              child: Form(
                key: _formKey,
                child: Column(
                  children: [
                    SignForm(lableText: "First Name" ,controller: firstNameC,validator: (v) => (v==null || v.isEmpty) ? 'Required' : null,),
                    
                    SignForm(lableText: "Last Name", controller: lastNameC,
                      validator: (v) => (v==null || v.isEmpty) ? 'Required' : null),
                    
                    SignForm(lableText: "Email", controller: emailC,
                      validator: (v) => (v==null || v.isEmpty) ? 'Required' : null,
                      keyboardType: TextInputType.emailAddress),
                    
                    SignUpPass(lableText: "Password", controller: passwordC,
                      validator: (v) => (v==null || v.length < 6) ? 'Min 6 chars' : null),
                    
                    SizedBox(height: 30),
                    ElevatedButtonSign(onPressed: _submit, textbut: "Sign Up"),
                SizedBox(height: 10,),
                    TextAfterbuttun(text1:"Already have an account ?",text2:"SignIn" ,onTap: () => Navigator.pushReplacement(context,MaterialPageRoute(builder: (_)=>SignIn())), ),
                      ],
                ),
              ),
          ) 
           ]
        
        ),
      ),
    );
  }
}