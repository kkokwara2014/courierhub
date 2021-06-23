import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class Dashboard extends StatefulWidget {
  @override
  _DashboardState createState() => _DashboardState();
}

class _DashboardState extends State<Dashboard> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        drawer: Drawer(
          child: SingleChildScrollView(
            reverse: true,
            child: Column(
              children: [
                Container(
                  width: double.infinity,
                  padding: EdgeInsets.all(20),
                  color: Color(0xff322f6a),
                  child: Column(
                    children: [
                      Container(
                        width: 70,
                        height: 70,
                        margin: EdgeInsets.only(
                          top: 30,
                          bottom: 3,
                        ),
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          image: DecorationImage(
                            image:
                                AssetImage('assets/shared/images/logo-bg.png'),
                            fit: BoxFit.fill,
                          ),
                        ),
                      ),
                      Text(
                        'Kalu Kalu Okwara',
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.normal,
                          color: Colors.white,
                        ),
                      ),
                      Text(
                        'View Profile',
                        style: TextStyle(fontSize: 18, color: Colors.white),
                      ),
                    ],
                  ),
                ),
                ListTile(
                  leading: Icon(FontAwesomeIcons.home),
                  title: Text(
                    'Home',
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.normal,
                    ),
                  ),
                  onTap: () {
                    Navigator.of(context).pop();
                    Navigator.push(context,
                        MaterialPageRoute(builder: (BuildContext context) {
                      return Dashboard();
                    }));
                  },
                ),
                ListTile(
                  leading: Icon(FontAwesomeIcons.calendar),
                  title: Text(
                    'Trip History',
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.normal,
                    ),
                  ),
                  onTap: null,
                ),
                ListTile(
                  leading: Icon(FontAwesomeIcons.moneyBill),
                  title: Text(
                    'My Earnings',
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.normal,
                    ),
                  ),
                  onTap: null,
                ),
                ListTile(
                  leading: Icon(FontAwesomeIcons.wallet),
                  title: Text(
                    'Wallet',
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.normal,
                    ),
                  ),
                  onTap: null,
                ),
                ListTile(
                  leading: Icon(FontAwesomeIcons.cog),
                  title: Text(
                    'Settings',
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.normal,
                    ),
                  ),
                  onTap: null,
                ),
                ListTile(
                  leading: Icon(FontAwesomeIcons.tachometerAlt),
                  title: Text(
                    'Work Summary',
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.normal,
                    ),
                  ),
                  onTap: null,
                ),
                ListTile(
                  leading: Icon(FontAwesomeIcons.shareAlt),
                  title: Text(
                    'Refer a Friend',
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.normal,
                    ),
                  ),
                  onTap: null,
                ),
                ListTile(
                  leading: Icon(FontAwesomeIcons.questionCircle),
                  title: Text(
                    'Support',
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.normal,
                    ),
                  ),
                  onTap: null,
                ),
                ListTile(
                  leading: Icon(FontAwesomeIcons.signOutAlt),
                  title: Text(
                    'Logout',
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.normal,
                    ),
                  ),
                  onTap: null,
                ),
                SizedBox(
                  height: 60,
                ),
                
              ],
            ),
          ),
        ),
        appBar: AppBar(
          title: Text('Dashboard'),
          centerTitle: true,
          backgroundColor: Color(0xfff26836),
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