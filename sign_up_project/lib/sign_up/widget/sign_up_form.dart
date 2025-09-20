import 'package:flutter/material.dart';

class SignUpForm extends StatelessWidget {
  const SignUpForm({super.key, required this.lableText, this.onChanged});
  final Function(String)? onChanged;
final String lableText;
  @override
  Widget build(BuildContext context) {
    return Padding(
    padding: const EdgeInsets.only(left: 8.0,right: 8,top: 24),
      child: TextFormField(
          validator: (value) {
            if(value!.isEmpty)
            {
              return "This field is required";
            }
            else 
            {return null;}
          },
      
          onChanged:onChanged,
         
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
  const SignUpPass({super.key, required this.lableText, this.onChanged, });
final String lableText;
final Function(String)? onChanged;


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
        validator: (value) {
          if(value!.isEmpty)
          {
            return "This field is required";
          }
          else 
          {return null;}
        },

        onChanged:widget.onChanged,

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

