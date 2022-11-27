

import 'package:flutter/material.dart';
import 'package:wudgress_project/forgot_password.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {

GlobalKey<FormState> _formKey = GlobalKey<FormState>();


  @override
  Widget build(BuildContext context) {
    
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.grey,
      ),
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(30.0),
              child: Text('Welcome back! Glad \n  To See You Again!',
              style: TextStyle(
                fontStyle: FontStyle.normal,
                fontWeight: FontWeight.bold,
                fontSize: 25,
              ),
              ),
          
            ),
            Form(
              key: _formKey,
              child:Column(
                children: [
                  TextFormField(
                    decoration: InputDecoration(
                      hintText: 'Enter Your Email',
                      border: OutlineInputBorder(),
                    ),
                    validator: (value) {
                      if (value!.isEmpty) {
                           return "* Required";
                             } else
                   return null;
                  },
                  ),
                  SizedBox(height: 15,),
                  TextFormField(
                    decoration: InputDecoration(
                      hintText: 'Enter Your Password',
                      border: OutlineInputBorder(
                        
                      ),
                    ),
                    validator: (value) {
                             if (value!.isEmpty) {
                              return "* Required";
                        } else if (value.length < 6) {
                     return "Password should be atleast 6 characters";
                    } else if (value.length > 15) {
                 return "Password should not be greater than 15 characters";
              } else
          return null;
                },
                  ),
                  SizedBox(height: 20,),
                  TextButton(
                    
                    onPressed: (){
                      Navigator.push(context,MaterialPageRoute(builder: (context) => ForgotPassword()));
                    }, 
                  child: Text('Forgot Password',
                  style: TextStyle(
                    decoration: TextDecoration.underline,
                  ),
                  ),
                  ),
                  SizedBox(
                    height: 15,
                  ),
                  ElevatedButton(
                    onPressed: (){
                      if (_formKey.currentState!.validate()) {
                     print("Validated");
                              }else{
                          print("Not Validated");
                       }
          
                    }, 
                    child: Text('Login'),
                    ),
              ],)
              ),
               SizedBox(height: 25,),
                Text('Or Login With'),
               
          ],
        ),
      ),
    );
  }
}