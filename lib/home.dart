import 'dart:async';

import 'package:courierhub/Login.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {

@override
  void initState() {
    super.initState();
    Timer(
      Duration(seconds: 5), 
      (){
        Navigator.push(context, MaterialPageRoute(builder: (BuildContext context){
          return Login();
        }));
      }
    );
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: Stack(
          fit: StackFit.expand,
          children: [
            Container(
              decoration: BoxDecoration(
                color: Color(0xfff26836)
              ),
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Expanded(
                  child: Container(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        CircleAvatar(
                          backgroundColor: Colors.white,
                          radius: 70.0,
                          child: Icon(
                            Icons.shopping_cart,
                            color: Color(0xff322f6a),
                            size: 70.0,
                          
                          ),
                        ),
                        Padding(padding: EdgeInsets.only(top: 10.0)),
                        Text(
                          'CourierHub',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 30,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ],
                    ),
                  ),
                  flex: 2,
                ),
                Expanded(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      CircularProgressIndicator(),
                      Padding(
                        padding: EdgeInsets.only(top: 20.0),
                      ),
                      Text('Integrated Courier Service Provider',
                        style: TextStyle(
                          color: Color(0xff322f6a),
                          fontWeight: FontWeight.bold,
                          fontSize: 18.0,
                        ),
                      ),
                    ],
                    
                  ),
                  flex: 1,
                ),
              ],
            )
          ],
        ),
      ),
        
    );
  }
}
