import 'package:courierhub/shared/drawer.dart';
import 'package:flutter/material.dart';

class Earnings extends StatefulWidget {
  @override
  _EarningsState createState() => _EarningsState();
}

class _EarningsState extends State<Earnings> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        drawer: DashboardDrawer(),
        appBar: AppBar(
          title: Text('Earnings'),
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
              
              Card(
                margin: EdgeInsets.all(5.0),
                child: Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: [
                      Text(
                        'This is a card! It is good to use a card in presenting data.',
                        style: TextStyle(
                          fontSize: 18.0,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
