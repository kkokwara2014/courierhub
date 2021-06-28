import 'package:flutter/material.dart';


class DashboardDrawer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
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
                        image: AssetImage('assets/shared/images/logo_bg.png'),
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
              leading: Icon(
                Icons.home_outlined,
                size: 25,
              ),
              title: Text(
                'Home',
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.normal,
                ),
              ),
              onTap: () {
                Navigator.of(context).pop();
                Navigator.of(context).pushNamed('/dashboard');
              },
            ),
            ListTile(
              leading: Icon(
                Icons.date_range_outlined,
                size: 25,
              ),
              title: Text(
                'Trip History',
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.normal,
                ),
              ),
              onTap: () {
                  Navigator.of(context).pop();
                  Navigator.of(context).pushNamed('/triphistory');
              },
            ),
            ListTile(
              leading: Icon(
                Icons.payment_sharp,
                size: 25,
              ),
              title: Text(
                'My Earnings',
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.normal,
                ),
              ),
              onTap: () {
                  Navigator.of(context).pop();
                  Navigator.pushNamed(context, '/earnings');
              },
            ),
            ListTile(
              leading: Icon(
                Icons.account_balance_wallet,
                size: 25,
              ),
              title: Text(
                'Wallet',
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.normal,
                ),
              ),
              onTap: () {
                  Navigator.of(context).pop();
                  Navigator.pushNamed(context, '/wallet');
              },
            ),
            ListTile(
              leading: Icon(
                Icons.settings,
                size: 25,
              ),
              title: Text(
                'Settings',
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.normal,
                ),
              ),
              onTap: () {
                  Navigator.of(context).pop();
                  Navigator.pushNamed(context, '/settings');
              },
            ),
            ListTile(
              leading: Icon(
                Icons.speed_sharp,
                size: 25,
              ),
              title: Text(
                'Work Summary',
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.normal,
                ),
              ),
              onTap: () {
                  Navigator.of(context).pop();
                  Navigator.pushNamed(context, '/worksummary');
              },
            ),
            ListTile(
              leading: Icon(
                Icons.share_outlined,
                size: 25,
              ),
              title: Text(
                'Refer a Friend',
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.normal,
                ),
              ),
              onTap: () {
                //Share with a friend
              },
            ),
            ListTile(
              leading: Icon(
                Icons.help_outline,
                size: 25,
              ),
              title: Text(
                'Support',
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.normal,
                ),
              ),
              onTap: () {
                  Navigator.of(context).pop();
                  Navigator.pushNamed(context, '/support');
              },
            ),
            ListTile(
              leading: Icon(
                Icons.logout,
                size: 25,
              ),
              title: Text(
                'Logout',
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.normal,
                ),
              ),
              onTap: () {
                //logout user
              },
            ),
            SizedBox(
              height: 60,
            ),
          ],
        ),
      ),
    );
  }
}

