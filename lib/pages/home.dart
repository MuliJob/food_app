import 'package:flutter/material.dart';
import 'package:food_app/widgets/widget_support.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {

bool icecream=false, pizza=false, salad=false, burger=false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        margin: EdgeInsets.only(top: 10.0, left: 20.0),
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
                    margin: EdgeInsets.only(right: 10.0),
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
                  SizedBox(height: 20.0,),
                  Container(
                    margin: EdgeInsets.only(right: 10.0),
                    child: showItem()),
                  SizedBox(height: 30.0,),
                  SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      children: [
                      Container(
                        margin: EdgeInsets.all(4),
                        child: Material(
                          elevation: 5.0,
                          borderRadius: BorderRadius.circular(20),
                          child: Container(
                            padding: EdgeInsets.all(14),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                              Image.asset(
                                "images/salad2.png",
                                height: 150,
                                width: 150,
                                fit: BoxFit.cover,
                              ),
                              Text("Veggie Taco Hash", style: AppWidget.semiBoldTextFieldStyle(),),
                              SizedBox(height: 5.0,),
                              Text("Fresh and Healthy", style: AppWidget.lightTextFieldStyle(),),
                              SizedBox(height: 5.0,),
                              Text("Ksh.400", style: AppWidget.semiBoldTextFieldStyle(),)
                            ],),
                          ),
                        ),
                      ),
                      SizedBox(width: 15.0,),
                      Container(
                        margin: EdgeInsets.all(4),
                        child: Material(
                          elevation: 5.0,
                          borderRadius: BorderRadius.circular(20),
                          child: Container(
                            padding: EdgeInsets.all(14),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                              Image.asset(
                                "images/salad3.png",
                                height: 150,
                                width: 150,
                                fit: BoxFit.cover,
                              ),
                              Text("Mix Veg Salad", style: AppWidget.semiBoldTextFieldStyle(),),
                              SizedBox(height: 5.0,),
                              Text("Spicy with Onion", style: AppWidget.lightTextFieldStyle(),),
                              SizedBox(height: 5.0,),
                              Text("Ksh.500", style: AppWidget.semiBoldTextFieldStyle(),)
                            ],),
                          ),
                        ),
                      ),

                      SizedBox(width: 15.0,),
                      Container(
                        margin: EdgeInsets.all(4),
                        child: Material(
                          elevation: 5.0,
                          borderRadius: BorderRadius.circular(20),
                          child: Container(
                            padding: EdgeInsets.all(14),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                              Image.asset(
                                "images/salad4.png",
                                height: 150,
                                width: 150,
                                fit: BoxFit.cover,
                              ),
                              Text("Veggie Taco", style: AppWidget.semiBoldTextFieldStyle(),),
                              SizedBox(height: 5.0,),
                              Text("Fresh and Healthy", style: AppWidget.lightTextFieldStyle(),),
                              SizedBox(height: 5.0,),
                              Text("Ksh.600", style: AppWidget.semiBoldTextFieldStyle(),)
                            ],),
                          ),
                        ),
                      ),
                    ],),
                  )
          ],
        ),
      ),
    );
  }

  Widget showItem() {
    return Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
        GestureDetector(
          onTap: () {
            icecream=true;
            pizza=false;
            salad=false;
            burger=false;
            setState(() {
              
            });
          },
          child: Material(
            elevation: 5.0,
            borderRadius: BorderRadius.circular(10),
            child: Container(
              decoration: BoxDecoration(color: icecream?Colors.black: Colors.white, borderRadius: BorderRadius.circular(10)),
              padding: EdgeInsets.all(8),
              child: Image.asset("images/ice-cream.png", height: 40, width: 40, fit: BoxFit.cover, color: icecream? Colors.white: Colors.black,
              ),
            ),
          ),
        ),
        GestureDetector(
          onTap: () {
            icecream=false;
            pizza=true;
            salad=false;
            burger=false;
            setState(() {
              
            });
          },
          child: Material(
            elevation: 5.0,
            borderRadius: BorderRadius.circular(10),
            child: Container(
              decoration: BoxDecoration(color: pizza?Colors.black: Colors.white, borderRadius: BorderRadius.circular(10)),
              padding: EdgeInsets.all(8),
              child: Image.asset("images/pizza.png", height: 40, width: 40, fit: BoxFit.cover, color: pizza? Colors.white: Colors.black,
              ),
            ),
          ),
        ),
        GestureDetector(
          onTap: () {
            icecream=false;
            pizza=false;
            salad=true;
            burger=false;
            setState(() {
              
            });
          },
          child: Material(
            elevation: 5.0,
            borderRadius: BorderRadius.circular(10),
            child: Container(
              decoration: BoxDecoration(color: salad?Colors.black: Colors.white, borderRadius: BorderRadius.circular(10)),
              padding: EdgeInsets.all(8),
              child: Image.asset("images/salad.png", height: 40, width: 40, fit: BoxFit.cover, color: salad? Colors.white: Colors.black,
              ),
            ),
          ),
        ),
        GestureDetector(
          onTap: () {
            icecream=false;
            pizza=false;
            salad=false;
            burger=true;
            setState(() {
              
            });
          },
          child: Material(
            elevation: 5.0,
            borderRadius: BorderRadius.circular(10),
            child: Container(
              decoration: BoxDecoration(color: burger?Colors.black: Colors.white, borderRadius: BorderRadius.circular(10)),
              padding: EdgeInsets.all(8),
              child: Image.asset("images/burger.png", height: 40, width: 40, fit: BoxFit.cover, color: burger? Colors.white: Colors.black,
              ),
            ),
          ),
        ),
      ],
    );
  }
}