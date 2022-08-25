import 'package:flutter/material.dart';
import 'package:lavie/screens/homescreen/bottomappbar_screens/notifications/notifications_screen.dart';
import 'package:lavie/screens/homescreen/bottomappbar_screens/posts.dart';
import 'package:lavie/screens/homescreen/bottomappbar_screens/profile.dart';
import 'package:lavie/screens/homescreen/bottomappbar_screens/qr_scan.dart';

class BottomBar extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return BottomAppBar(
      shape: CircularNotchedRectangle(),
      notchMargin: 6.0,
      color: Colors.transparent,
      elevation: 10.0,
      clipBehavior: Clip.antiAlias,
      child: Container(
        height: 50,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.only(topLeft: Radius.circular(25.0),topRight: Radius.circular(25.0)),
          color: Colors.white,
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Container(
              height: 50,
              width: MediaQuery.of(context).size.width/2 - 40,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  InkWell(
                    onTap: (){
                      Navigator.pushNamed(context, Posts.routeName);
                    },
                      child: Icon(Icons.energy_savings_leaf,color: Colors.black,)),
                  InkWell(onTap: (){
                    Navigator.pushNamed(context, QrScan.routeName);

                  },child: Icon(Icons.qr_code_scanner,color: Colors.black,)),
                ],
              ),
            ),
            Container(
              height: 50,
              width: MediaQuery.of(context).size.width/2 - 40,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  InkWell(onTap: (){
                    Navigator.pushNamed(context, NotificationsScreen.routeName);

                  },child: Icon(Icons.notifications_active_outlined,color: Colors.black,)),
                  InkWell(onTap: (){
                    Navigator.pushNamed(context, Profile.routeName);

                  },child: Icon(Icons.person_outline,color: Colors.black,)),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
