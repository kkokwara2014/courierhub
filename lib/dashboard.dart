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
      home: Scaffold(
        drawer: Drawer(
          child: Column(
            children: [
              Container(
                width: double.infinity,
                padding: EdgeInsets.all(20),
                color: Color(0xfff26836),
                child: Center(
                  child: Column(
                    children: [
                      Container(
                        width: 100,
                        height: 100,
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
                      Divider(
                        indent: 60,
                        endIndent: 60,
                        color: Colors.white,
                        thickness: 2,
                      ),
                      Text(
                        'K. K. Okwara',
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                        ),
                      ),
                      Text(
                        'kkokwara2014@gmail.com',
                        style: TextStyle(fontSize: 16, color: Colors.white),
                      ),
                    ],
                  ),
                ),
              ),
              ListTile(
                leading: Icon(Icons.speed_outlined),
                title: Text(
                  'Dashboard',
                  style: TextStyle(
                    fontSize: 15,
                  ),
                ),
                onTap: (){
                  Navigator.of(context).pop();
                  Navigator.push(context, MaterialPageRoute(builder: (BuildContext context){
                    return Dashboard();
                  }));
                },
              ),
              ListTile(
                leading: Icon(Icons.person),
                title: Text(
                  'Person',
                  style: TextStyle(
                    fontSize: 15,
                  ),
                ),
                onTap: null,
              ),
              ListTile(
                leading: Icon(Icons.settings),
                title: Text(
                  'Settings',
                  style: TextStyle(
                    fontSize: 15,
                  ),
                ),
                onTap: null,
              ),
              ListTile(
                leading: Icon(Icons.arrow_back),
                title: Text(
                  'Logout',
                  style: TextStyle(
                    fontSize: 15,
                  ),
                ),
                onTap: null,
              ),
            ],
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
