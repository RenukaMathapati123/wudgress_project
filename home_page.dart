

import 'package:flutter/material.dart';
import 'package:wudgress_project/login_page.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Homepage'),
      ),
      body: Center(
        child: Column(
          children: [
            Image.network('https://images.unsplash.com/photo-1502759683299-cdcd6974244f?auto=format&fit=crop&w=440&h=220&q=60',
            height: 150,
            width: 150,
            ),
           SizedBox(height:30),
            Image.network('https://images.unsplash.com/photo-1476610182048-b716b8518aae?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxjb2xsZWN0aW9uLXBhZ2V8MnwxMjQwfHxlbnwwfHx8fA%3D%3D&w=1000&q=80',
            height: 150,
            width: 150,
            ),
            SizedBox(height: 15,),
            ElevatedButton(
              style: ButtonStyle(
                backgroundColor: MaterialStateProperty.all<Color>(Colors.black),
              ),
              onPressed: (){
              Navigator.push(context, MaterialPageRoute(
                builder: ((context) => LoginPage()
              )));
              }, 
            child: Text('Login'),
            ),
            SizedBox(height: 15,),
            ElevatedButton(
              style: ButtonStyle(
                backgroundColor: MaterialStateProperty.all<Color>(Colors.black),
              ),
              onPressed: (){}, 
            child: Text('Register'),
            ),
            SizedBox(height:30),
            TextButton(
              onPressed: (){}, 
              child: Text('Sign In as guest',
              style: TextStyle(
                decoration: TextDecoration.underline,
                ),
              ),
              )
          ],
        ),
      ),
    );
  }
}