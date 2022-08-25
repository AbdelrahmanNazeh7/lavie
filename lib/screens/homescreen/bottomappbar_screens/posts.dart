import 'package:flutter/material.dart';

class Posts extends StatelessWidget {
  static const String routeName = 'posts-screen';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: Text('Create New Post',style: TextStyle(color: Colors.black),),
        centerTitle: true,
        backgroundColor: Colors.white,
        elevation: 0,
        iconTheme: IconThemeData(
          color: Colors.black
        ),
      ),
      body: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              width: 136,
              height: 136,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.all(Radius.circular(8)),
                border: Border.all(color: Colors.green),
              ),
              child: Center(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(Icons.add,size: 20,color: Colors.green,),
                    Text('Add Photo',style: TextStyle(color: Colors.green,fontSize: 16,fontWeight: FontWeight.w400),)
                  ],
                ),
              ),
            ),
            Container(
              child: TextFormField(
                onChanged: (text){
                },
                style: const TextStyle(
                    color: Colors.green
                ),
                decoration: const InputDecoration(
                    hintText: 'Title',
                    hintStyle: TextStyle(
                      color: Color.fromARGB(255, 111, 111, 111),
                    ),
                    border:InputBorder.none
                ),
              ),
              padding: const EdgeInsets.symmetric(horizontal: 20,vertical: 5),
              margin: const EdgeInsets.symmetric(vertical: 10),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(29),
                  color: Colors.white,
                border: Border.all(color: Color.fromARGB(255, 111, 111, 111),)
              ),
              width: MediaQuery.of(context).size.width *0.8,
            ),
            Container(
              height: 130,
              width: MediaQuery.of(context).size.width * 0.8,
              child: TextFormField(
                onChanged: (text){
                },
                style: const TextStyle(
                    color: Colors.green
                ),
                decoration: const InputDecoration(
                    hintText: 'Description',
                    hintStyle: TextStyle(
                      color: Color.fromARGB(255, 111, 111, 111),
                    ),
                    border:InputBorder.none
                ),
              ),
              padding: const EdgeInsets.symmetric(horizontal: 20,vertical: 5),
              margin: const EdgeInsets.symmetric(vertical: 10),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(29),
                  color: Colors.white,
                  border: Border.all(color: Color.fromARGB(255, 111, 111, 111),)
              ),
            ),
            InkWell(
              onTap: (){},
              child: Container(
                width: MediaQuery.of(context).size.width * 0.8,
                child: const Center(
                  child:
                  Text(
                    'Post',
                    style: TextStyle(
                      color: Colors.white,
                    ),
                    textAlign: TextAlign.center,
                  ),
                ),
                padding: const EdgeInsets.symmetric(horizontal: 20,vertical: 5),
                margin: const EdgeInsets.symmetric(vertical: 10),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(29),
                  color: Colors.green,
                ),
                height: MediaQuery.of(context).size.height *0.07,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
