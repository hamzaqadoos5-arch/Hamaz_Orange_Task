import 'package:flutter/material.dart';

class Updatets extends StatelessWidget {
  const Updatets({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
       padding: const EdgeInsets.only(top: 50,left: 5),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text("Updatets",style: TextStyle(fontSize: 35,fontWeight: FontWeight.bold),),
          Divider()
          ],
        ),
      ),
    );
  }
}