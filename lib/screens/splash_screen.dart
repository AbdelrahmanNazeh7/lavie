import 'dart:async';

import 'package:flutter/material.dart';
import 'package:lavie/screens/homescreen/home.dart';
import 'package:lavie/screens/registration/registration_screen.dart';
import 'package:shared_preferences/shared_preferences.dart';
String? finalEmail;
class SplashScreen extends StatefulWidget {
  static const String routeName = 'splash-screen';
@override
Splash createState() => Splash();
}

class Splash extends State<SplashScreen>  {

@override
void initState() {
   getValidationData().whenComplete(()async{
     Timer(
         Duration(seconds: 3), () =>
         Navigator.of(context).pushReplacementNamed(finalEmail == null ? RegistrationScreen.routeName : Home.routeName));
   });
super.initState();
}
Future getValidationData()async{
  final SharedPreferences sharedPreferences = await SharedPreferences.getInstance();
  var obtainedEmail= sharedPreferences.getString('email');
  setState(() {
    finalEmail =obtainedEmail;
  });
}
@override
Widget build(BuildContext context) {

var assetsImage = new AssetImage('assets/images/ic_launcher.png'); //<- Creates an object that fetches an image.
var image = new Image(image: assetsImage, height:300); //<- Creates a widget that displays an image.
return MaterialApp(
home: Scaffold(
body: Container(
decoration: new BoxDecoration(color: Colors.white),
child: new Center(
child: image,),
),
),
);
}
}