import 'package:flutter/material.dart';

import 'home.dart';


class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return  Material(
      color: Colors.white,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          Image.asset("images/boy.png"),
          SizedBox(height: 5,
          ),
          Text("Order your Food Now!",
          style: TextStyle(
            fontSize: 28,
            fontWeight: FontWeight.bold,
            fontStyle: FontStyle.italic,
          ),),
          Padding(padding: EdgeInsets.all(15),
          child: Text(
            "Order your food in minutes",
          style: TextStyle(
            fontSize: 18,
            color: Colors.black45,
          ),
          textAlign: TextAlign.center,
          ),),
          SizedBox(height: 80),
          InkWell(
            onTap: (){
              Navigator.push(context, MaterialPageRoute(builder: (context) => HomeScreen(),));
            },
            child: Container(
              margin: EdgeInsets.symmetric(horizontal: 20, vertical: 50),
              padding: EdgeInsets.symmetric(vertical: 20),
              decoration: BoxDecoration(
                color: Color(0xFFFF2F08),
                borderRadius: BorderRadius.circular(10),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text("Get Started!",
                  style:TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  ),
                  ),
                  SizedBox(width: 10),
                  Icon(Icons.arrow_forward_ios,color: Colors.white,size: 20,),
                ],),
            ),
          )
        ],
        ),
    );
  }
}