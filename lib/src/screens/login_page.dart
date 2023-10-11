import 'package:clanleo_attendance/src/screens/signup_screen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../const/firebase_consts.dart';
import 'home_page.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final TextEditingController emailController=TextEditingController();
  final TextEditingController passwordController=TextEditingController();
  final _formKey=GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.only(right: 30,
              left: 30),
          child: SingleChildScrollView(
            child: Form(
              key: _formKey,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Padding(
                    padding: EdgeInsets.only(left: 10,top: 126),
                    child: Text("Login",
                      style: TextStyle(fontSize: 30,
                          fontWeight: FontWeight.w400,
                          fontFamily:"Alata" ),),
                  ),
                  SizedBox(height: 90),

                  TextFormField(
                    controller: emailController,
                    // validator: (value){
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
                      prefixIcon: const Icon(Icons.mail_outline_rounded),
                      prefixIconColor: const Color(0xff00CECE),
                      hintText: "Email",
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

                  ),
                  const SizedBox(height: 30),


                  TextFormField(
                    controller: passwordController,
                    //



                    // keyboardType: TextInputType.text,
                    decoration: InputDecoration(
                      prefixIcon: const Icon(Icons.key_outlined),
                      prefixIconColor: const Color(0xff00CECE),
                      hintText: "Password",
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

                  ),
                  const SizedBox(height: 200),
                  Center(
                      child: Container(
                        height: 50,width: 280,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: const Color(0xff00CECE),),
                        child: TextButton(
                          onPressed: ()async{
                            auth.signInWithEmailAndPassword(
                                email: emailController.text,
                                password: passwordController.text)
                                .then((value) {
                              // if (_formKey.currentState!.validate())
                              {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => HomePage()),
                                );
                              }
                            });
                            // final isValiedForm = formKey.currentState?.validate()!;
                            // final isValiedFrom = formKey.currentState?.validate()!;
                            // validate();
                            // Navigator.push(context,MaterialPageRoute(builder: (context) => HomePage()),);
                          },
                          child: const Text('Log in',style:
                          TextStyle( fontWeight: FontWeight.w700,fontFamily: "Inter",
                              color: Colors.white),
                          ),
                        ),

                      ),

                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text("Don't You Have An Account?"),
                      TextButton(onPressed: (){
                        Navigator.push(context, MaterialPageRoute(builder: (context) => SignupScreen(),));
                      },
                          child: Text("Sign Up"))
                    ],
                  )
                ],
              ),
            ),
          ),
        ),
      ),

    );
  }
}
