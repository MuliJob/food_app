import 'package:flutter/material.dart';
import 'package:food_app/widgets/widget_support.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        margin: EdgeInsets.only(top: 10.0, left: 20.0, right: 10.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "Hello Muli,", 
                  style: AppWidget.boldTextFieldStyle()
                  ),
                  Container(
                    padding: EdgeInsets.all(3),
                    decoration: BoxDecoration(color: Colors.black, borderRadius: BorderRadius.circular(10)),
                    child: Icon(Icons.shopping_cart, color: Colors.white,),
                  )
              ],
            ),
            SizedBox(height: 30.0,),
            Text(
                  "Delicious Food", 
                  style: AppWidget.headLineTextFieldStyle()
                  ),
            Text(
                  "Discover and Get Great Food", 
                  style: AppWidget.lightTextFieldStyle()
                  ),
                  Row(children: [
                    Container(
                      child: Image.asset("images/ice-cream.png", height: 40, width: 40, fit: BoxFit.cover,),
                    ),
                  ],
                ),
          ],
        ),
      ),
    );
  }
}