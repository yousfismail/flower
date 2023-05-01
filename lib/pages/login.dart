import 'dart:developer';

import 'package:flower_app/pages/register.dart';
import 'package:flutter/material.dart';

import '../shared/colors.dart';
import '../shared/custom_textfield.dart'; 

class Login extends StatelessWidget {
  const Login({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Color.fromARGB(255, 247, 247, 247),
         body:  Center(
          child: Padding(
            padding: const EdgeInsets.all(33.0),
            child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
              children:  [
                const SizedBox(height: 64,),
                
                MyTextField  (hinttexttt: 'Enter Your Email', isPassword:  false, textInputTypeee: TextInputType.emailAddress,),
                const SizedBox(height: 33,),
                 MyTextField  (hinttexttt: 'Enter Your Password', isPassword: true, textInputTypeee: TextInputType.text,),
                
                const SizedBox(height: 33,), 
    
                ElevatedButton(onPressed: (){},
                child: Text( ' Sing in ' , style: TextStyle(fontSize: 19) ) ,
                style: ButtonStyle(backgroundColor: MaterialStateProperty.all(BTNgreen),
                padding: MaterialStateProperty.all(EdgeInsets.all(12)),
                shape: MaterialStateProperty.all(RoundedRectangleBorder(
                   borderRadius:  BorderRadius.circular(8)
                )),
                ),
                ), 
    
                const SizedBox(height: 33,), 
    
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                   children: [
                    Text ('Do not have an account?' , style: TextStyle(fontSize: 18),),
                    TextButton(onPressed: (){
                      Navigator.pushReplacement(context,
                      MaterialPageRoute(builder: (context) => const Register()),);                       
                    },
                    child: Text('sing up' , style: TextStyle(color: Colors.black , fontSize: 18))),
                  ],
                )
    
    
    
              ],
        
            ),
          ),
        ),
      ),
    );
  }
}