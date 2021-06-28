// import 'package:courierhub/pages/earnings.dart';
// import 'package:courierhub/pages/settings.dart';
// import 'package:courierhub/pages/support.dart';
// import 'package:courierhub/pages/triphistory.dart';
// import 'package:courierhub/pages/wallet.dart';
// import 'package:courierhub/pages/worksummary.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:courierhub/shared/drawer.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

class Dashboard extends StatefulWidget {
  Future<DocumentSnapshot> userData = FirebaseFirestore.instance.collection('users')
    .doc(FirebaseAuth.instance.currentUser.uid)
    .get();
    
  @override
  _DashboardState createState() => _DashboardState();
}

class _DashboardState extends State<Dashboard> {
  User user = FirebaseAuth.instance.currentUser;
  String firstname;
  int allMyRiders;
  int myInactiveRiders;
  int myActiveRiders;

  @override
  void initState() {    
    super.initState();
    FirebaseFirestore.instance.collection('users').doc(user.uid).get().then((snapshot) {
      firstname = snapshot.data()['first_name'];
    });    
  }

  @override
  Widget build(BuildContext context) {
    return StreamBuilder(
      stream: FirebaseFirestore.instance.collection('users').doc(FirebaseAuth.instance.currentUser.uid).snapshots(),
      builder:
        (BuildContext context, AsyncSnapshot<DocumentSnapshot> snapshot)
    {
      
    if(!snapshot.hasData){
      return Scaffold(
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
        body:Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Center(
              child: CircularProgressIndicator(),
            ),
            SizedBox(height: 5.0),
            Center(child: Text('Loading dashboard data...'))
          ],
        )
      );
    }

    //get INACTIVE riders count
    FirebaseFirestore.instance.collection('users')
    .where('company_code', isEqualTo: snapshot.data.data()['company_code'])
    .where('role', isEqualTo: 'rider' )
    .where('is_activated', isEqualTo: false )
    .get()
    .then((ridersSnapshot) {
      List<DocumentSnapshot> myRiders = ridersSnapshot.docs;
      setState(() {
        myInactiveRiders = myRiders.length;
      });
    });

    //get ACTIVE riders count
    FirebaseFirestore.instance.collection('users')
    .where('company_code', isEqualTo: snapshot.data.data()['company_code'])
    .where('role', isEqualTo: 'rider' )
    .where('is_activated', isEqualTo: true )
    .get()
    .then((ridersSnapshot) {
      List<DocumentSnapshot> myRiders = ridersSnapshot.docs;
      setState(() {
        myActiveRiders = myRiders.length;
      });
    });

    return Scaffold(
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
        body: ListView(
          children: [
            Container(
              // padding: EdgeInsets.fromLTRB(15, 20, 15, 25),
              child: Column(
                children: [
                  Card(
                    margin: EdgeInsets.fromLTRB(10, 10, 10, 20),
                    elevation: 7.0,
                    child: Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.stretch,
                        children: [
                          Text(
                            'Hello '+snapshot.data.data()['first_name'] +'!',
                            style: TextStyle(
                              fontSize: 20.0,
                            ),
                          ),
                          Text(
                            'Good evening',
                            style: TextStyle(
                              fontSize: 12.0,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Expanded(
                        child: InkWell(
                          child: Card(
                            margin: EdgeInsets.fromLTRB(10, 20, 10, 20),
                            elevation: 7.0,
                            color: Colors.green[600],
                            child: Padding(
                              padding: const EdgeInsets.all(10.0),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Text(
                                    myActiveRiders.toString(),
                                    style: TextStyle(
                                      fontSize: 25,
                                      fontWeight: FontWeight.bold,
                                      color: Colors.white,
                                    ),
                                  ),
                                  SizedBox(
                                    height: 10,
                                  ),
                                  Text(
                                    'Active Riders',
                                    style: TextStyle(
                                      fontSize: 15.0,
                                      color: Colors.white,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                          onTap: () {},
                        ),
                      ),
                      Expanded(
                        child: InkWell(
                          child: Card(
                            margin: EdgeInsets.fromLTRB(10, 20, 10, 20),
                            elevation: 7.0,
                            color: Colors.amber,
                            child: Padding(
                              padding: const EdgeInsets.all(10.0),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Text(
                                    myInactiveRiders.toString(),
                                    style: TextStyle(
                                      fontSize: 25,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                  SizedBox(
                                    height: 10,
                                  ),
                                  Text(
                                    'Inactive Riders',
                                    style: TextStyle(
                                      fontSize: 15.0,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                          onTap: () {},
                        ),
                      ),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Expanded(
                        child: InkWell(
                          child: Card(
                            margin: EdgeInsets.fromLTRB(10, 20, 10, 20),
                            elevation: 7.0,
                            child: Padding(
                              padding: const EdgeInsets.all(10.0),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Icon(
                                    Icons.cloud_upload_outlined,
                                    size: 25,
                                  ),
                                  SizedBox(
                                    height: 10,
                                  ),
                                  Text(
                                    'Upload',
                                    style: TextStyle(
                                      fontSize: 15.0,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                          onTap: () {},
                        ),
                      ),
                      Expanded(
                        child: InkWell(
                          child: Card(
                            margin: EdgeInsets.fromLTRB(10, 20, 10, 20),
                            elevation: 7.0,
                            child: Padding(
                              padding: const EdgeInsets.all(10.0),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Icon(
                                    Icons.work_outline,
                                    size: 25,
                                  ),
                                  SizedBox(
                                    height: 10,
                                  ),
                                  Text(
                                    'Update',
                                    style: TextStyle(
                                      fontSize: 15.0,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                          onTap: () {
                            Navigator.of(context).pushNamed('/update-profile');
                          },
                        ),
                      ),
                      Expanded(
                        child: InkWell(
                          child: Card(
                            margin: EdgeInsets.fromLTRB(10, 20, 10, 20),
                            elevation: 7.0,
                            child: Padding(
                              padding: const EdgeInsets.all(10.0),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Icon(
                                    Icons.directions_bike,
                                    size: 25,
                                  ),
                                  SizedBox(
                                    height: 10,
                                  ),
                                  Text(
                                    'Riders',
                                    style: TextStyle(
                                      fontSize: 15.0,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                          onTap: () {},
                        ),
                      ),
                      Expanded(
                        child: InkWell(
                          child: Card(
                            margin: EdgeInsets.fromLTRB(10, 20, 10, 20),
                            elevation: 7.0,
                            child: Padding(
                              padding: const EdgeInsets.all(10.0),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Icon(
                                    Icons.lock_rounded,
                                    size: 25,
                                  ),
                                  SizedBox(
                                    height: 10,
                                  ),
                                  Text(
                                    'Security',
                                    style: TextStyle(
                                      fontSize: 15.0,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                          onTap: () {},
                        ),
                      ),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Expanded(
                        child: InkWell(
                          child: Card(
                            margin: EdgeInsets.fromLTRB(10, 20, 10, 20),
                            elevation: 7.0,
                            child: Padding(
                              padding: const EdgeInsets.all(10.0),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Icon(
                                    Icons.person,
                                    size: 25,
                                  ),
                                  SizedBox(
                                    height: 10,
                                  ),
                                  Text(
                                    'Profile',
                                    style: TextStyle(
                                      fontSize: 15.0,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                          onTap: () {},
                        ),
                      ),
                      Expanded(
                        child: InkWell(
                          child: Card(
                            margin: EdgeInsets.fromLTRB(10, 20, 10, 20),
                            elevation: 7.0,
                            child: Padding(
                              padding: const EdgeInsets.all(10.0),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Icon(
                                    Icons.payments_sharp,
                                    size: 25,
                                  ),
                                  SizedBox(
                                    height: 10,
                                  ),
                                  Text(
                                    'Earnings',
                                    style: TextStyle(
                                      fontSize: 15.0,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                          onTap: () {},
                        ),
                      ),
                      Expanded(
                        child: InkWell(
                          child: Card(
                            margin: EdgeInsets.fromLTRB(10, 20, 10, 20),
                            elevation: 7.0,
                            child: Padding(
                              padding: const EdgeInsets.all(10.0),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Icon(
                                    Icons.calendar_today_outlined,
                                    size: 25,
                                  ),
                                  SizedBox(
                                    height: 10,
                                  ),
                                  Text(
                                    'History',
                                    style: TextStyle(
                                      fontSize: 15.0,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                          onTap: () {},
                        ),
                      ),
                      Expanded(
                        child: InkWell(
                          child: Card(
                            margin: EdgeInsets.fromLTRB(10, 20, 10, 20),
                            elevation: 7.0,
                            child: Padding(
                              padding: const EdgeInsets.all(10.0),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Icon(
                                    Icons.settings,
                                    size: 25,
                                  ),
                                  SizedBox(
                                    height: 10,
                                  ),
                                  Text(
                                    'Settings',
                                    style: TextStyle(
                                      fontSize: 15.0,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                          onTap: () {},
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),

        // bottom navigation bar
        bottomNavigationBar: BottomNavigationBar(
          items: const <BottomNavigationBarItem>[
            BottomNavigationBarItem(
              icon: Icon(Icons.home_outlined),
              label: 'Home',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.account_balance_wallet_outlined),
              label: 'Wallet',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.logout),
              label: 'Logout',
            ),
            
          ],
        ),
      );
    }
  );
  }
}
