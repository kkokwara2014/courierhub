import 'dart:async';

// import 'package:courierhub/Login.dart';
import 'package:courierhub/pages/landing.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  void initState() {
    super.initState();
    Timer(Duration(seconds: 5), () {
      Navigator.push(context,
          MaterialPageRoute(builder: (BuildContext context) {
        // return Login();
        return LandingPage();
      }));
    });
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
              decoration: BoxDecoration(color: Color(0xfff26836)),
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Expanded(
                  child: Container(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Image.asset(
                          'assets/shared/images/logo-white.png',
                          height: 180,
                          width: 180,
                        ),
                        Padding(padding: EdgeInsets.only(top: 10.0)),
                        
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
                      Text(
                        'Integrated Courier Service Provider',
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
