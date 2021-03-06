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
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        drawer: DashboardDrawer(),
        appBar: AppBar(
          title: Text('Support'),
          centerTitle: true,
          backgroundColor: Color(0xfff26836),
          elevation: 0.0,
          actions: [
            TextButton.icon(
              onPressed: () {},
              icon: Icon(
                Icons.notifications,
                // color: Color(0xff322f6a),
                color: Colors.white,
              ),
              label: Text(''),
            ),
          ],
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