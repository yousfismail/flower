import 'dart:developer';

import 'package:flower_app/pages/login.dart';
import 'package:flutter/material.dart';

import '../shared/colors.dart';
import '../shared/custom_textfield.dart';

class Register extends StatelessWidget {
  const Register({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Color.fromARGB(255, 247, 247, 247),
        body: Center(
          child: Padding(
            padding: const EdgeInsets.all(33.0),
            child: SingleChildScrollView(
              child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const SizedBox(height: 64,),
            
                  MyTextField(hinttexttt: 'Enter Your Username', isPassword: false, textInputTypeee: TextInputType.text,),
                  const SizedBox(height: 33,),
                  
                  MyTextField(hinttexttt: 'Enter Your Email', isPassword: false, textInputTypeee: TextInputType.emailAddress,),
                  const SizedBox(height: 33,),
                  MyTextField(hinttexttt: 'Enter Your Password', isPassword: true, textInputTypeee: TextInputType.text,),
                  
                  const SizedBox(height: 33,),
                
                  ElevatedButton(onPressed: (){}, child: Text( ' Register ' , style: TextStyle(fontSize: 19) ) ,
                  style: ButtonStyle(backgroundColor: MaterialStateProperty.all(BTNgreen),
                  padding: MaterialStateProperty.all(EdgeInsets.all(12)),
                  shape: MaterialStateProperty.all(RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(8)
                  )),
                  ),
                  ),
                
                  const SizedBox(height: 33,),
                
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text('Do not have an account?' , style: TextStyle(fontSize: 18),),
                      TextButton(onPressed: (){
                        Navigator.pushReplacement(context,
                        MaterialPageRoute(builder: (context) => const Login()),);
                      },
                      child: Text('sing in' , style: TextStyle(color: Colors.black , fontSize: 18))),
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