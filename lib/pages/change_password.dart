import 'package:courierhub/shared/drawer.dart';
import 'package:flutter/material.dart';

class ChangePassword extends StatefulWidget {
  @override
  _ChangePasswordState createState() => _ChangePasswordState();
}

class _ChangePasswordState extends State<ChangePassword> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: DashboardDrawer(),
      appBar: AppBar(
        title: Text('Change Password'),
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
          SizedBox(height: 30,),
          Container(
            
            // padding: EdgeInsets.fromLTRB(15, 20, 15, 25),
            child: Column(
              children: [
                Padding(
                  padding: EdgeInsets.all(20),
                  child: Column(
                    children: [
                      TextFormField(
                        obscureText: true,
                        decoration: InputDecoration(
                          prefixIcon: Icon(Icons.lock),
                          labelText: "New Password",
                          labelStyle: TextStyle(
                            fontSize: 16,
                            color: Colors.black,
                          ),
                        ),
                        keyboardType: TextInputType.text,
                      ),
                      SizedBox(
                        height: 10.0,
                      ),
                      TextFormField(
                        decoration: InputDecoration(
                          prefixIcon: Icon(Icons.lock),
                          labelText: "Confirm Password",
                          labelStyle: TextStyle(
                            fontSize: 16,
                            color: Colors.black,
                          ),
                        ),
                        keyboardType: TextInputType.text,
                      ),
                      SizedBox(height: 15.0,),

                     OutlinedButton(
                        onPressed: () {},
                        style: OutlinedButton.styleFrom(
                          shape: StadiumBorder(),
                          backgroundColor: Color(0xff322f6a),
                          minimumSize: Size(400.0, 45.0),
                        ),
                        child: Text(
                          'Change Password',
                          style: TextStyle(
                            fontSize: 18,
                            color: Colors.white,
                          ),
                        ),
                      ),
                    ],
                  ),
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
}
