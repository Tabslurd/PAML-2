import 'package:flutter/material.dart';
import 'package:flutter_application_1/login.dart';
import 'dart:async';



class SplashScreen extends StatefulWidget{

  _SplashScreen createState() => _SplashScreen();

}

class _SplashScreen extends State<SplashScreen>{

  void initState(){
    super.initState();
    splashscreenStart();
  }

  splashscreenStart() async{
    var duration = const Duration(seconds: 5);
    return Timer(duration, (){
      Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => LoginScreen()),

      );
    });
  }
  @override 
  Widget build(BuildContext context){

    return Scaffold(
      backgroundColor: Colors.blue,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            
            Icon(
              Icons.school,
              size: 100.0,
              color: Colors.black,
            ),
  
            SizedBox(height: 0.0,),

            Text("RESPONSI",
              style: TextStyle(
                color: Colors.black,
                fontWeight: FontWeight.bold,
                fontSize: 30.0,
              ),
            ),
            
          ],
        ),
      ),
    );
  }

}