import 'package:flutter/material.dart';
import 'package:shared_reference_task/Core/database/cache_helper.dart';
import 'package:shared_reference_task/Features/auth/views/Sign_up.dart';
import 'package:shared_reference_task/Features/auth/wedget/ElevatedButton_SignUp.dart';
import 'package:shared_reference_task/Features/auth/wedget/sign_form.dart';
import 'package:shared_reference_task/Features/auth/wedget/sing_text.dart';
import 'package:shared_reference_task/Features/auth/wedget/text_afterButtun.dart';
import 'package:shared_reference_task/Features/home/widget/nav_bar.dart';


class SignIn extends StatefulWidget {
  const SignIn({super.key});

  @override
  State<SignIn> createState() => _SignInState();
}

class _SignInState extends State<SignIn> {
   final _formKey = GlobalKey<FormState>();
  final TextEditingController emailC = TextEditingController();
  final TextEditingController passwordC = TextEditingController();

  @override
  void dispose() {
    emailC.dispose();
    passwordC.dispose();
    super.dispose();
  }

  Future<void> _login() async {
    if (!_formKey.currentState!.validate()) return;

   
    await CacheHelper.saveData(key: "email", value: emailC.text);
 await CacheHelper.saveData(key: "token", value: "signin");
String? token = CacheHelper.getString("token");
if (token == null) {
  print("Token is null, check CacheHelper.init()");
} else {
  print("$token ************************************");
}
    if (!mounted) return;
    Navigator.pushReplacement(context, MaterialPageRoute(builder: (_)=>Home()));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers:[
          SliverToBoxAdapter(child: SizedBox(height: 150),),
          SliverToBoxAdapter(child: SignText(text: "sign In",),),
          SliverToBoxAdapter(child: SizedBox(height: 50),),
SliverToBoxAdapter(child:Form(
  
  key: _formKey,
  child: Column(

children: [
SignForm(lableText: "email", controller: emailC,validator: (v) => v ==null|| v.isEmpty?"Enter email":null ,),
SignForm(lableText: "password", controller: passwordC,validator: (v) => v ==null|| v.isEmpty?"Enter password":null ,),
         const SizedBox(height: 32),
             ElevatedButtonSign(textbut:"Sign In",onPressed:_login ),
SizedBox(height: 10,),
             TextAfterbuttun(text1: "Don't have an account ?", text2: "SignUp",onTap: () => 
             Navigator.pushReplacement(context,MaterialPageRoute(builder: (_)=>SignUp())),)

],
            
)) ,)     
        ],
      ),
    );
  }
}