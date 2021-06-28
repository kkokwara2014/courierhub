import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:courierhub/login.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

class UpdateDeliveryPartnerProfile extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return StreamBuilder(
      stream: FirebaseFirestore.instance.collection('users').doc(FirebaseAuth.instance.currentUser.uid).snapshots(),
      builder: (context, snapshot) {
        if(!snapshot.hasData){
          return Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Center(
                child: CircularProgressIndicator(),
              ),
              SizedBox(height: 5.0),
              Center(child: Text('Loading...'))
            ],
          );
        }
        return Scaffold(
          // appBar: AppBar(
          //   title: Text('Sign Up'),
          //   centerTitle: true,
          //   backgroundColor: Color(0xfff26836),
          // ),
          
          body: Center(
            
            child: SingleChildScrollView(
              reverse: true,
              child: Column(
                children: [  
                  Text(
                      'Update Profile',
                      style: TextStyle(
                          fontSize: 30,
                          fontWeight: FontWeight.bold,
                          color: Color(0xff322f6a)),
                    ),
                    SizedBox(
                      height: 5,
                    ),                
                  Text(
                    'Make quick adjustments',
                    style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.normal,
                        color: Color(0xfff26836)),
                  ),
                  SizedBox(
                    height: 8,
                  ),
                  Divider(
                    thickness: 3,
                    height: 10,
                    indent: 80,
                    endIndent: 80,
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  Padding(
                    padding: EdgeInsets.all(20),
                    child: Column(
                      children: [
                        TextFormField(
                          controller: TextEditingController(text: snapshot.data.data()['first_name']),
                          decoration: InputDecoration(
                            prefixIcon: Icon(Icons.person),
                            labelText: "First Name",
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
                          controller: TextEditingController(text: snapshot.data.data()['last_name']),
                          decoration: InputDecoration(
                            prefixIcon: Icon(Icons.person),
                            labelText: "Last Name",
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
                          controller: TextEditingController(text: snapshot.data.data()['business_name']),
                          decoration: InputDecoration(
                            prefixIcon: Icon(Icons.person),
                            labelText: "Registered Business Name",
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
                          controller: TextEditingController(text: snapshot.data.data()['business_phone']),
                          decoration: InputDecoration(
                            prefixIcon: Icon(Icons.phone),
                            labelText: "Phone Number",
                            labelStyle: TextStyle(
                              fontSize: 16,
                              color: Colors.black,
                            ),
                          ),
                          keyboardType: TextInputType.phone,
                        ),
                        SizedBox(
                          height: 10.0,
                        ),
                        TextFormField(
                          controller: TextEditingController(text: snapshot.data.data()['email']),
                          decoration: InputDecoration(
                            prefixIcon: Icon(Icons.mail),
                            labelText: "Email",
                            labelStyle: TextStyle(
                              fontSize: 16,
                              color: Colors.black,
                            ),
                          ),
                          keyboardType: TextInputType.emailAddress,
                        ),
                        SizedBox(
                          height: 10.0,
                        ),
                        OutlinedButton(
                          onPressed: () {},
                          style: OutlinedButton.styleFrom(
                            shape: StadiumBorder(),
                            backgroundColor: Color(0xfff26836),
                            minimumSize: Size(400.0, 45.0),
                          ),
                          child: Text(
                            'Update Profile',
                            style: TextStyle(
                              fontSize: 18,
                              color: Colors.white,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            "Changed your mind?",
                            style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.normal,
                              color: Colors.black,
                            ),
                          ),
                          TextButton(
                            onPressed: () {
                              Navigator.of(context).pop();
                            },
                            child: Text(
                              "Go back",
                              style: TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.bold,
                                color: Color(0xfff26836),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ],
                  )
                ],
              ),
            ),
          ),
        );
      }
    );
  }
}
