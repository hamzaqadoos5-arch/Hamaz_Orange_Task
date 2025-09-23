import 'package:flutter/material.dart';

class SignForm extends StatelessWidget {
  const SignForm({super.key, required this.lableText, this.validator,  this.keyboardType, required this.controller,});
  
  final String lableText;
  final String? Function(String?)? validator;
  final TextInputType? keyboardType;
  final TextEditingController controller;

  @override
  Widget build(BuildContext context) {
    return Padding(
    padding: const EdgeInsets.only(left: 8.0,right: 8,top: 24),
      child: TextFormField(
          validator: validator,
         controller: controller,
         keyboardType: keyboardType,
         
        decoration: InputDecoration(
          labelStyle:TextStyle(fontSize: 16,fontWeight: FontWeight.w500,color: Colors.grey),
          labelText:lableText ,
          border: getBorderStyle(),
        enabledBorder: getBorderStyle(),
        focusedBorder: getBorderStyle(),
        
        ),
        
        ),
    );
  }
}

OutlineInputBorder getBorderStyle()
{
return OutlineInputBorder(
  borderRadius: BorderRadius.circular(4),
  borderSide: BorderSide(color: Colors.grey),
);


}

class SignUpPass extends StatefulWidget {
  const SignUpPass({super.key, required this.lableText, required this.controller, this.validator, });
final String lableText;

  final TextEditingController controller;
  final String? Function(String?)? validator;

  @override
  State<SignUpPass> createState() => _SignUpPassState();
}

class _SignUpPassState extends State<SignUpPass> {
  bool _obscureText=true;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 8.0,right: 8,top: 24),
      child: TextFormField(
        validator: widget.validator,
controller: widget.controller,

        obscureText:_obscureText ,
      decoration: InputDecoration(
        labelStyle:TextStyle(fontSize: 16,fontWeight: FontWeight.w500,color: Colors.grey),
        labelText:widget.lableText ,
        border: getBorderStyle(),
      enabledBorder: getBorderStyle(),
      focusedBorder: getBorderStyle(),
      suffixIcon: IconButton(onPressed: () {
        setState(() {
          _obscureText=!_obscureText;
        });
      }, icon: _obscureText?Icon(Icons.visibility_off):Icon(Icons.visibility))
      ),
      
      ),
    );
  }
}