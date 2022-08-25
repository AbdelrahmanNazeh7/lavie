import 'package:flutter/material.dart';
import 'package:lavie/screens/homescreen/bottomappbar_screens/notifications/notifications_screen.dart';
import 'package:lavie/screens/homescreen/bottomappbar_screens/posts.dart';
import 'package:lavie/screens/homescreen/bottomappbar_screens/profile.dart';
import 'package:lavie/screens/homescreen/bottomappbar_screens/qr_scan.dart';
import 'package:lavie/screens/homescreen/home.dart';
import 'package:lavie/screens/registration/registration_screen.dart';
import 'package:lavie/screens/splash_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'la vie',
      routes: {
        RegistrationScreen.routeName: (context) => RegistrationScreen(),
        SplashScreen.routeName: (context) => SplashScreen(),
        Home.routeName:(context) => Home(),
        Posts.routeName:(context) => Posts(),
        NotificationsScreen.routeName:(context) => NotificationsScreen(),
        Profile.routeName:(context) => Profile(),
        QrScan.routeName:(context) => QrScan(),

      },
      initialRoute: SplashScreen.routeName,
    );
  }
}
