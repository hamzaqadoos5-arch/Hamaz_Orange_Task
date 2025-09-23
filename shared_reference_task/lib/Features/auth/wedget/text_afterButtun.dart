import 'package:flutter/material.dart';


class TextAfterbuttun extends StatelessWidget {
  const TextAfterbuttun({super.key, required this.text1, required this.text2, this.onTap});
final String text1;
final String text2;
final void Function()? onTap;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap:onTap ,
      child: Text.rich(
        TextSpan(
          style: TextStyle(color: Colors.grey,fontSize: 15,fontWeight: FontWeight.w400),
          children:[
          TextSpan(text: text1,),
          TextSpan(text: text2,style: TextStyle(decoration: TextDecoration.underline,color: const Color.fromARGB(255, 0, 0, 0)) )
          ]
           )
      
      
       ),
    );
  }
}