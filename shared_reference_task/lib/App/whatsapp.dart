import 'package:flutter/material.dart';
import 'package:shared_reference_task/Features/seplash/view/seplash.dart';

class WhatsApp extends StatelessWidget {
  const WhatsApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
home:SeplashView(),

      
    );
  }
}