import 'package:flutter/material.dart';
import 'package:wudgress_project/home_page.dart';


class SpalshScreen extends StatefulWidget {
  const SpalshScreen({Key? key}) : super(key: key);

  @override
  State<SpalshScreen> createState() => _SpalshScreenState();
}

class _SpalshScreenState extends State<SpalshScreen> {
 
  @override
  void initState(){
    super.initState();
    _navigatetohome();
  }
 
  _navigatetohome() async {
  await Future.delayed(Duration(seconds: 12),(){});
   Navigator.push(
                              this.context,
                              MaterialPageRoute(
                                  builder: (context) => HomeScreen()),
                            );
 }
 
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.lightBlue,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            CircleAvatar(
              radius:100,
              backgroundColor: Colors.lightBlueAccent,
              child: Image.network('https://media.istockphoto.com/photos/maldives-tropical-island-picture-id1360554439?b=1&k=20&m=1360554439&s=170667a&w=0&h=-IRAQ28DT0XwLBQ-_gjV3erce0OdvxiWPaa_Ioz95ws=',
              width: 150,
              
              ),
            
            ),
              SizedBox(height: 40,),
              Text('   Welcome,   \nLets get Started'),
              SizedBox(height: 40,),
              Text('Wudgress distributor App\n   version 1.11.0'),
          ],
        ),
      ),
    );
  }
}