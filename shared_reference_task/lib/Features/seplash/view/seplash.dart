import 'dart:async';
import 'package:flutter/material.dart';
import 'package:shared_reference_task/Core/database/cache_helper.dart';
import 'package:shared_reference_task/Core/utils/app_assets.dart';
import 'package:shared_reference_task/Features/auth/views/Sign_up.dart';
import 'package:shared_reference_task/Features/home/widget/nav_bar.dart';



class SeplashView extends StatefulWidget {
  const SeplashView({super.key});

  @override
  State<SeplashView> createState() => _SeplashViewState();
}

class _SeplashViewState extends State<SeplashView> {
  void initState() {
    super.initState();
  _checkLogin();
  }
  Future<void> _checkLogin()async{
   await Future.delayed(const Duration(seconds: 2)); 

    final token = CacheHelper.getString("toekn");

    if (!mounted) return;
print("token: $token");
    if (token != null && token.isNotEmpty) {
      Navigator.pushReplacement(context,MaterialPageRoute(builder: (_)=> Home()) );
    } else {
      Navigator.pushReplacement(context,MaterialPageRoute(builder: (_)=>SignUp()));
    }

  }
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        
        child: 
           Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
             children: [
               Image.asset(Assets.logo,width: 75,height: 75,),
               const SizedBox(height: 20,),
               const Text("WhatsApp",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),)],
           ),
           
          
      ));
  }
  }
