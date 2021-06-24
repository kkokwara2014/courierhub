import 'package:courierhub/shared/drawer.dart';
import 'package:flutter/material.dart';

class Support extends StatefulWidget {
  
  @override
  _SupportState createState() => _SupportState();
}

class _SupportState extends State<Support> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        drawer: DashboardDrawer(),
        appBar: AppBar(
          title: Text('Support'),
          centerTitle: true,
          backgroundColor: Color(0xfff26836),
        ),
        body: Container(
          padding: EdgeInsets.all(8.0),
          child: Column(
            children: [
              Text('Support',
                  style: TextStyle(
                    fontWeight: FontWeight.normal,
                    fontSize: 18,
                  )),
            ],
          ),
        ),
      ),
      
    );
  }
}