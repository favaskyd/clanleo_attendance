
import 'package:clanleo_attendance/src/screens/login_page.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../const/firebase_consts.dart';
import '../theme/custom_textfiled.dart';

class SignupScreen extends StatefulWidget {
  const SignupScreen({super.key});

  @override
  State<SignupScreen> createState() => _SignupScreenState();
}

class _SignupScreenState extends State<SignupScreen> {
  final userController =TextEditingController();
  final emailController =TextEditingController();
  final passwordController =TextEditingController();
  final conformpasswordController =TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(30),
          child: Column(
            children: [
              SizedBox(height: 80,),
              Text("SignUp",
                style: TextStyle(fontSize: 30,
                    fontWeight: FontWeight.w400,
                    fontFamily:"Alata" ),),
              SizedBox(height: 50,),
              CustomTextField(controller: userController, textIcon: Icon(Icons.person), hintText: 'Username',),
              SizedBox(height: 20,),
              CustomTextField(controller: emailController, textIcon: Icon(Icons.email), hintText: 'Email',),
              SizedBox(height: 20,),
              CustomTextField(controller: passwordController, textIcon: Icon(Icons.lock), hintText: 'Password',),
              SizedBox(height: 20,),
              CustomTextField(controller: conformpasswordController, textIcon:  Icon(Icons.lock), hintText: 'Conformpassword',),
              SizedBox(height: 50,),
              MaterialButton(onPressed: ()async{
                print(emailController.text);
                print(passwordController.text);
                auth.createUserWithEmailAndPassword(


                    email: emailController.text,
                    password: passwordController.text).then((value) {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => LoginPage(),));
                });
              },
                  shape: OutlineInputBorder(borderRadius: BorderRadius.circular(20),
                      borderSide: BorderSide.none),

                  height: 50,
                  minWidth: 280,
                  color: Color(0xff00CECE),

                  child: Text("Submit"))
            ],
          ),
        ),

      ),
    );
  }
}
