import 'package:flutter/material.dart';

class NotificationsScreen extends StatelessWidget {
  static const String routeName = 'notifications-screen';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Notifications',style: TextStyle(fontSize: 19,fontWeight: FontWeight.w500,color: Colors.black),),
        centerTitle: true,
        backgroundColor: Colors.white,
        elevation: 0,
        iconTheme: IconThemeData(
          color: Colors.black
        ),
      ),
      body: ListView.separated(
        itemBuilder: (buildContext,index){
          return Container(
            margin: EdgeInsets.symmetric(horizontal: 13,vertical: 10),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                    height:50,
                    width:50,
                    padding:EdgeInsets.all(10),
                    decoration:BoxDecoration(
                      shape: BoxShape.circle,
                      color: Colors.grey.shade300,
                    ),
                    child:Icon(Icons.notifications,size: 25,color: Colors.green.shade700,)
                ),
                Expanded(
                  child: Container(
                    margin: EdgeInsets.only(left: 10),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          child: RichText(
                            maxLines: 3,
                            overflow: TextOverflow.ellipsis,
                            text: TextSpan(
                              text: 'Message',
                              style: TextStyle(
                                fontSize: 14,
                                color: Colors.black,fontWeight: FontWeight.bold,
                              ),
                              children: [
                                TextSpan(text: 'Message Description',style: TextStyle(fontWeight: FontWeight.w400,),),
                              ]
                            ),
                          ),
                        ),
                        Container(
                          margin: EdgeInsets.only(top: 5),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text('23-4-2022',style: TextStyle(fontSize: 10),),
                              Text('07:10 AM',style: TextStyle(fontSize: 10),),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          );
        },
        separatorBuilder: (context,index){
          return Divider(height: 0,);
        },
        itemCount: 15,
      ),
    );
  }

}



