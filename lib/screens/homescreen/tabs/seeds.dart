import 'package:flutter/material.dart';
import 'package:lavie/screens/homescreen/tabs/product_item.dart';

class Seeds extends StatelessWidget {
  const Seeds({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      itemCount: 10,
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          childAspectRatio: 0.7),
      itemBuilder: (context,index){
        return ProductItem();
      },
    );
  }
}
