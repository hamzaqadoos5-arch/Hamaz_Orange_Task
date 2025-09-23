import 'package:flutter/material.dart';

class ElevatedButtonSign extends StatelessWidget {
  const ElevatedButtonSign({super.key, required this.textbut, this.onPressed});
final String textbut;

  final VoidCallback? onPressed;
  @override
  Widget build(BuildContext context) {
    return  SizedBox(
      height: 56,
      width: double.infinity,
      child: ElevatedButton(
         style: ElevatedButton.styleFrom(
      backgroundColor: const Color.fromARGB(255, 10, 85, 1),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(5),)
      ),
         onPressed: onPressed, child: Text(textbut,style:TextStyle(color: Colors.white) ,) ),
    
    );
  }
}