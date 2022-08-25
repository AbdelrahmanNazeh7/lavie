import 'dart:ui';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:flutter/material.dart';

class Profile extends StatelessWidget {
  static const String routeName = 'profile-screen';

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          decoration: BoxDecoration(
            image: DecorationImage(image:AssetImage('assets/images/back.jpg'),fit: BoxFit.cover),

          ),
          child: ClipRRect( // make sure we apply clip it properly
            child: BackdropFilter(
              filter: ImageFilter.blur(sigmaX: 10, sigmaY: 10),
              child: Container(
                alignment: Alignment.center,
                color: Colors.grey.withOpacity(0.1),
              ),
            ),
          ),
            ),
        Scaffold(
          appBar: AppBar(
            backgroundColor: Colors.transparent,
            elevation: 0,
            actions: [
              Icon(Icons.keyboard_control, color: Colors.white,size: 26,),
            ],
          ),
          backgroundColor: Colors.transparent,
          body: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.end,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Container(
                  width: MediaQuery.of(context).size.width * 0.4,
                  height: MediaQuery.of(context).size.height * 0.2,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(90),
                    image: const DecorationImage(
                        image: AssetImage('assets/images/ellipse.jpg'),
                        fit: BoxFit.fill),
                  ),
                ),
                SizedBox(
                  height: 13,
                ),
                Text('Name',style: TextStyle(
                  fontWeight: FontWeight.w700,
                  fontSize: 24,color: Colors.white
                ),),
                SizedBox(
                  height: 20,
                ),
                Container(
                  height: MediaQuery.of(context).size.height * 0.6,
                  width: MediaQuery.of(context).size.width,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.only(topLeft: Radius.circular(15),topRight:Radius.circular(15) ),
                    color: Colors.white,
                  ),
                  child: Padding(
                    padding: const EdgeInsets.only(top: 31.0),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Container(
                          width: MediaQuery.of(context).size.width * 0.85,
                          height: MediaQuery.of(context).size.height *0.09,
                          decoration: BoxDecoration(
                            color: Color.fromARGB(255, 243, 254, 241),
                            borderRadius: BorderRadius.all(Radius.circular(15))
                          ),
                          child: Padding(
                            padding: EdgeInsets.only(left: 15),
                            child: Row(
                              children: [
                                Icon(Icons.star,size: 20,color: Colors.amberAccent,),
                                SizedBox(
                                  width: 13,
                                ),
                                Text('You Have 30 Points',style: TextStyle(color: Colors.black,fontSize: 16,fontWeight: FontWeight.w500),)
                              ],
                            ),
                          ),
                        ),
                        SizedBox(height: 24,),
                        Container(width: MediaQuery.of(context).size.width * 0.85,
                          padding: const EdgeInsets.only(left: 20.0),
                          child: Text('Edit Profile',style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),),
                        ),
                        SizedBox(height: 23,),
                        Container(
                          width: MediaQuery.of(context).size.width * 0.85,
                          height: MediaQuery.of(context).size.height *0.09,
                          decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.all(Radius.circular(15))
                          ),
                          child: Padding(
                            padding: EdgeInsets.only(left: 15),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Container(
                                  child: Row(
                                    children: [
                                      SvgPicture.asset('assets/images/icon.svg'),
                                      SizedBox(
                                        width: 13,
                                      ),
                                      Text('Change Name',style: TextStyle(color: Colors.black,fontSize: 16,fontWeight: FontWeight.w500),)
                                    ],
                                  ),
                                ),
                                IconButton(onPressed: (){}, icon: Icon(Icons.arrow_forward))
                                ],
                            ),
                          ),
                        ),
                        SizedBox(height: 26,),
                        Container(
                          width: MediaQuery.of(context).size.width * 0.85,
                          height: MediaQuery.of(context).size.height *0.09,
                          decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.all(Radius.circular(15))
                          ),
                          child: Padding(
                            padding: EdgeInsets.only(left: 15),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Container(
                                  child: Row(
                                    children: [
                                      SvgPicture.asset('assets/images/icon.svg'),
                                      SizedBox(
                                        width: 13,
                                      ),
                                      Text('Change Email',style: TextStyle(color: Colors.black,fontSize: 16,fontWeight: FontWeight.w500),)
                                    ],
                                  ),
                                ),
                                IconButton(onPressed: (){}, icon: Icon(Icons.arrow_forward))
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),

      ],
    );
  }
}
