import 'package:flutter/material.dart';

class ElevatedButtonSignUp extends StatelessWidget {
  const ElevatedButtonSignUp({super.key, required this.textbut});
final String textbut;
  @override
  Widget build(BuildContext context) {
    return  SizedBox(
      height: 56,
      width: double.infinity,
      child: ElevatedButton(
         style: ElevatedButton.styleFrom(
      backgroundColor: Colors.orange,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(5),)
      ),
         onPressed: (){



         }, child: Text(textbut) ),
    );
  }
}



