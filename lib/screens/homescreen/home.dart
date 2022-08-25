import 'package:flutter/material.dart';
import 'package:lavie/screens/components/bottom_bar.dart';
import 'package:lavie/screens/homescreen/tabs/all.dart';
import 'package:lavie/screens/homescreen/tabs/plants.dart';
import 'package:lavie/screens/homescreen/tabs/seeds.dart';
import 'package:lavie/screens/homescreen/tabs/tools.dart';

class Home extends StatefulWidget {
  static const String routeName = 'home-screen';

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> with TickerProviderStateMixin{
  @override
  Widget build(BuildContext context) {
    TabController _tabController=TabController(length: 4, vsync: this);
    return Scaffold(
      backgroundColor: Colors.white,
      body: Container(
        margin: EdgeInsets.only(top: 51),
        child: Center(
          child: Column(
            // mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Image(image: AssetImage('assets/images/ic_launcher.png'),height: 30,width: 140,),
              SizedBox(
                height: 40,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Container(
                    width: 329,
                    height: 46,
                    decoration: BoxDecoration(
                      color: Color.fromARGB(
                          255, 248, 248, 248),
                      borderRadius: BorderRadius.all(Radius.circular(10))
                    ),
                    child: Row(
                      children: [
                        SizedBox(
                          width: 10,
                        ),
                        Icon(Icons.search,size: 16,color: Color.fromARGB(
                            255, 151, 151, 151),),
                        SizedBox(
                          width: 5,
                        ),
                        Text('search',style: TextStyle(
                            color: Color.fromARGB(255, 151, 151, 151),
                        fontSize: 16),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    decoration: BoxDecoration(
                      color: Color.fromARGB(
                          255, 26, 188, 0),
                      borderRadius: BorderRadius.all(Radius.circular(10))
                    ),
                    width: 51,
                    height: 46,
                    child: Center(
                      child: Icon(Icons.shopping_cart,color: Colors.white,size: 20,),
                    ),
                  )
                ],
              ),
              SizedBox(
                height: 36,
              ),
              Container(
                height: 40,
                child: TabBar(
                  controller: _tabController,
                  //isScrollable: true,

                  splashBorderRadius: BorderRadius.all(Radius.circular(15)),
                  labelColor: Color.fromARGB(255, 26, 188, 0),
                  unselectedLabelColor: Color.fromARGB(255, 151, 151, 151),
                  indicatorColor: Colors.transparent,
                  tabs: [
                    Tab(text: 'All'),
                    Tab(text: 'Plants'),
                    Tab(text: 'Seeds'),
                    Tab(text: 'Tools'),
                  ],
                ),
              ),
              Container(
                width: double.maxFinite,
                height: MediaQuery.of(context).size.height* 0.6,
                child: TabBarView(
                  controller: _tabController,
                  children: [
                    AllProducts(),
                    Plants(),
                    Seeds(),
                    Tools(),
                  ],
                ),
              ),
              SizedBox(height: 8,),
            ],
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(onPressed: (){
        Navigator.pushNamed(context, Home.routeName);
      },
      backgroundColor: Color.fromARGB(255, 26, 188, 0),
        child: Icon(Icons.home),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      bottomNavigationBar: BottomBar(),
    );
  }
}
