import 'package:flutter/material.dart';

class SignText extends StatelessWidget {
  const SignText({super.key, required this.text});
final String text;
  @override
  Widget build(BuildContext context) {
    return Center(child: Text(text, style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),));
  }
}