// import 'package:courierhub/pages/earnings.dart';
// import 'package:courierhub/pages/settings.dart';
// import 'package:courierhub/pages/support.dart';
// import 'package:courierhub/pages/triphistory.dart';
// import 'package:courierhub/pages/wallet.dart';
// import 'package:courierhub/pages/worksummary.dart';
import 'package:courierhub/routes/route_generator.dart';
import 'package:courierhub/shared/drawer.dart';
import 'package:flutter/material.dart';

class Dashboard extends StatefulWidget {
  @override
  _DashboardState createState() => _DashboardState();
}

class _DashboardState extends State<Dashboard> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,

      //setting up routes
      initialRoute: '/',
      onGenerateRoute: RouteGenerator.generateRoute,

      // routes: {
      //   '/triphistory': (_) => TripHistory(),
      //   '/earnings': (_) => Earnings(),
      //   '/wallet': (_) => Wallet(),
      //   '/settings': (_) => Settings(),
      //   '/worksummary': (_) => WorkSummary(),
      //   '/support': (_) => Support(),
      // },      

      home: Scaffold(
        
        drawer: DashboardDrawer(),
        appBar: AppBar(
          title: Text('Dashboard'),
          centerTitle: true,
          backgroundColor: Color(0xfff26836),
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
              Text('Dashboard',
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
