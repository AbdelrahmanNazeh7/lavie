import 'package:flutter/material.dart';

class ProductItem extends StatelessWidget {
  const ProductItem({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(right: 10,left: 10,bottom: 10),
      width: 176,
      decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.all(Radius.circular(20))
      ),
      child: Stack(
        fit: StackFit.expand,
        children: [
          Positioned(
            top: 160,
            child: Container(
              margin: EdgeInsets.all(8),
              child: Column(mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 14.0),
                        child: Text('DataData',style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 16,
                        ),),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 14.0),
                        child: Text('70 EGP',style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 12,
                        ),),
                      ),
                      Container(
                        width: 148,
                        height: 35,
                        padding: EdgeInsets.only(left: 14),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.all(Radius.circular(12)),
                          color: Colors.green,
                        ),
                        child: Center(
                          child: Text('Add To Card',style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 16,
                              color: Colors.white
                          ),),
                        ),
                      )],
                  )
                ],
              ),
            ),
          ),
          Positioned(
            bottom:100 ,
            right: 40,
            child: Image(
              image: AssetImage('assets/images/plant.png'),
              alignment: Alignment.topLeft,
              fit: BoxFit.fill,
            ),
          ),
          Positioned(
            top: 50,
            right: 10,
            child: Container(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Text('-',style: TextStyle(color: Colors.black,fontSize: 16),),
                  SizedBox(width: 5,),
                  Text('1',style: TextStyle(color: Colors.black,fontSize: 16),),
                  SizedBox(width: 5,),
                  Text('+',style: TextStyle(color: Colors.black,fontSize: 16),),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
