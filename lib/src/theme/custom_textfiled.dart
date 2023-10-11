
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CustomTextField extends StatelessWidget {

  final TextEditingController controller;
  final Icon  textIcon;
  final String hintText;
  const CustomTextField({
    super.key,
    required this.controller,
    required this.textIcon,
    required this.hintText,
  });



  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: controller,
      // validator:
      //     (value){
      //   if(value!.isEmpty){
      //     return "Please Enter Email";
      //   }else if(!RegExp(r'\S+@\S+\.\S+').hasMatch(value))
      //   {
      //     return "Please Enter a Valid Email";
      //   }
      //   return null;
      // },

      keyboardType: TextInputType.emailAddress,
      decoration: InputDecoration(
        prefixIcon: textIcon,
        prefixIconColor: const Color(0xff00CECE),
        hintText: hintText,
        hintStyle: const TextStyle(color: Color(0xff00CECE),
            fontFamily: "Inter",fontWeight: FontWeight.w500),
        focusColor: Colors.lime,
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(25),
        ),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(25),
          borderSide: const BorderSide(color: Color(0xff00CECE),width: 2),
        ),
      ),

    );
  }
}