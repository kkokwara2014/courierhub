import 'package:courierhub/shared/drawer.dart';
import 'package:flutter/material.dart';

class WorkSummary extends StatefulWidget {
  
  @override
  _WorkSummaryState createState() => _WorkSummaryState();
}

class _WorkSummaryState extends State<WorkSummary> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        drawer: DashboardDrawer(),
        appBar: AppBar(
          title: Text('Work Summary'),
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
              Text('Work Summary',
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