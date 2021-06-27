import 'package:flutter/material.dart';
import 'independent_dispatcher_register.dart';
import 'investor_register.dart';
import 'driver_biker_register.dart';
import 'delivery_partner_register.dart';

class GetStartedRegister extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: EdgeInsets.all(16.0),
        child: ListView(
          children: [
            Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: 20.0,),
              Text(
                'Let\'s get started',
                style: TextStyle(
                  fontSize: 22.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(height: 10.0),
              Text(
                'Please choose your preferred account type',
                style: TextStyle(
                  fontSize: 17.0,
                  fontWeight: FontWeight.normal,
                ),
              ),
              SizedBox(height: 10.0,),
              Row(
                children: [
                  Expanded(
                    child: InkWell(
                      onTap: () {
                        Navigator.push(context, MaterialPageRoute(builder: (_)=> DeliveryPartnerRegister())); 
                      },
                      child: Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(4.0),
                          color: Colors.purple[500],
                        ),
                        padding: EdgeInsets.all(8.0),                    
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Icon(Icons.inventory, size: 35.0, color: Colors.white,),
                            SizedBox(height: 10.0),
                            Text(
                              'Delivery Partner\'s Account',
                              style: TextStyle(
                                fontSize: 20.0,
                                fontWeight: FontWeight.bold,
                                color: Colors.white
                              )
                            ),
                            SizedBox(height: 5.0,),
                            Text(
                              'Sign up your dispatch vehicles or bikes as a Courier Delivery Vendor on CourierHub',
                              style: TextStyle(
                                fontSize: 15.0,
                                fontWeight: FontWeight.w500,
                                color: Colors.white
                              )
                            ),
                            SizedBox(height: 10.0)
                          ],
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(height: 10.0,),
              Row(
                children: [
                  Expanded(
                    child: InkWell(
                      onTap: () {
                        Navigator.push(context, MaterialPageRoute(builder: (_)=> IndependentDispatcherRegister())); 
                      },
                      child: Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(4.0),
                          color: Colors.orange[500],
                        ),
                        padding: EdgeInsets.all(8.0),                    
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Icon(Icons.directions_bike_rounded, size: 35.0, color: Colors.grey[700],),
                            SizedBox(height: 10.0),
                            Text(
                              'Independent Dispatcher\'s Account',
                              style: TextStyle(
                                fontSize: 20.0,
                                fontWeight: FontWeight.bold,
                                color: Colors.grey[700]
                              )
                            ),
                            SizedBox(height: 5.0,),
                            Text(
                              'Sign up your dispatch vehicles or bikes as an Independent Dispatcher on CourierHub',
                              style: TextStyle(
                                fontSize: 15.0,
                                fontWeight: FontWeight.w500,
                                color: Colors.grey[700]
                              )
                            ),
                            SizedBox(height: 10.0)
                          ],
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(height: 10.0,),
              Row(
                children: [
                  Expanded(
                    child: InkWell(
                      onTap: () {
                        Navigator.push(context, MaterialPageRoute(builder: (_)=> InvestorRegister())); 
                      },
                      child: Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(4.0),
                          color: Colors.cyan[600],
                        ),
                        padding: EdgeInsets.all(8.0),                    
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Icon(Icons.payments_sharp, size: 35.0, color: Colors.white,),
                            SizedBox(height: 10.0),
                            Text(
                              'Investors\'s Account',
                              style: TextStyle(
                                fontSize: 20.0,
                                fontWeight: FontWeight.bold,
                                color: Colors.white
                              )
                            ),
                            SizedBox(height: 5.0,),
                            Text(
                              'Invest with our Delivery Partners and earn weekly on CourierHub',
                              style: TextStyle(
                                fontSize: 15.0,
                                fontWeight: FontWeight.w500,
                                color: Colors.white
                              )
                            ),
                            SizedBox(height: 10.0)
                          ],
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(height: 10.0,),
              Row(
                children: [
                  Expanded(
                    child: InkWell(
                      onTap: () {
                        Navigator.push(context, MaterialPageRoute(builder: (_)=> DriverBikerRegister())); 
                      },
                      child: Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(4.0),
                          color: Colors.lightGreenAccent,
                        ),
                        padding: EdgeInsets.all(8.0),                    
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Icon(Icons.settings_backup_restore_outlined, size: 35.0, color: Colors.grey[700],),
                            SizedBox(height: 10.0),
                            Text(
                              'Apply as a Driver/Rider',
                              style: TextStyle(
                                fontSize: 20.0,
                                fontWeight: FontWeight.bold,
                                color: Colors.grey[700]
                              )
                            ),
                            SizedBox(height: 5.0,),
                            Text(
                              'Want to drive or ride for our Courier Delivery Partners around you? Let\'s connect you',
                              style: TextStyle(
                                fontSize: 15.0,
                                fontWeight: FontWeight.w500,
                                color: Colors.grey[700]
                              )
                            ),
                            SizedBox(height: 10.0)
                          ],
                        ),
                      ),
                    ),
                  ),
                ],
              )
            ],
          ),
          ]
        ),
      ),
    );
  }
}