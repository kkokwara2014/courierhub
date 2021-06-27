import 'package:flutter/material.dart';

class GpsTracker extends StatefulWidget {
  @override
  _GpsTrackerState createState() => _GpsTrackerState();
}

class _GpsTrackerState extends State<GpsTracker> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Container(
          child: Column(
            children: [
              Text('GPS Tracker Page'),
            ],
          ),
        ),
      ),
    );
  }
}
