import 'package:courierhub/login.dart';
import 'package:courierhub/services/auth.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

class DeliveryPartnerRegister extends StatelessWidget {
  final _formKey = GlobalKey<FormState>();
  final _auth = AuthService();
  String firstname = '';
  String lastname = '';
  String businessName = '';
  String phone = '';
  String email = '';
  String password = '';
  String refCode = '';
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        // appBar: AppBar(
        //   title: Text('Sign Up'),
        //   centerTitle: true,
        //   backgroundColor: Color(0xfff26836),
        // ),
        
        body: ListView(
          children: [
            Container(
              padding: EdgeInsets.fromLTRB(0.0, 8.0, 0.0, 0.0),
              child: Form(
                key: _formKey,
                child: Column(
                  children: [
                    Text(
                      'Sign Up',
                      style: TextStyle(
                          fontSize: 30,
                          fontWeight: FontWeight.bold,
                          color: Color(0xff322f6a)),
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    Text(
                      'Get Started with a ',
                      style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.normal,
                          color: Color(0xfff26836)),
                    ),
                    Text(
                      'FREE DELIEVERY PARTNER ACCOUNT',
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.normal,
                        color: Color(0xfff26836)
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.fromLTRB(20.0, 0.0, 20.0, 0.0),
                      child: Column(
                        children: [
                          TextFormField(
                            decoration: InputDecoration(
                              prefixIcon: Icon(Icons.person),
                              labelText: "First Name",
                              labelStyle: TextStyle(
                                fontSize: 16,
                                color: Colors.black,
                              ),
                            ),
                            keyboardType: TextInputType.text,
                            onChanged: (val) {
                              firstname = val;
                            },       
                            validator: (val) {
                              return val.isEmpty ? 'Please enter your first name' : null;
                            },                  
                          ),
                          SizedBox(
                            height: 10.0,
                          ),
                          TextFormField(
                            decoration: InputDecoration(
                              prefixIcon: Icon(Icons.person),
                              labelText: "Last Name",
                              labelStyle: TextStyle(
                                fontSize: 16,
                                color: Colors.black,
                              ),
                            ),
                            keyboardType: TextInputType.text,
                            onChanged: (val) {
                              lastname = val;
                            },       
                            validator: (val) {
                              return val.isEmpty ? 'Please enter your last name' : null;
                            },
                          ),
                          SizedBox(
                            height: 10.0,
                          ),
                          TextFormField(
                            decoration: InputDecoration(
                              prefixIcon: Icon(Icons.person),
                              hintText: "Registered Business Name",
                              labelStyle: TextStyle(
                                fontSize: 16,
                                color: Colors.black,
                              ),
                            ),
                            keyboardType: TextInputType.text,
                            onChanged: (val) {
                              businessName = val;
                            },       
                            validator: (val) {
                              return val.isEmpty ? 'Please enter your business name' : null;
                            },
                          ),
                          SizedBox(
                            height: 10.0,
                          ),
                          TextFormField(
                            decoration: InputDecoration(
                              prefixIcon: Icon(Icons.phone),
                              labelText: "Phone Number",
                              labelStyle: TextStyle(
                                fontSize: 16,
                                color: Colors.black,
                              ),
                            ),
                            keyboardType: TextInputType.phone,
                            onChanged: (val) {
                              phone = val;
                            },       
                            validator: (val) {
                              return val.isEmpty ? 'Please enter your phone number' : null;
                            },
                          ),
                          SizedBox(
                            height: 10.0,
                          ),
                          TextFormField(
                            decoration: InputDecoration(
                              prefixIcon: Icon(Icons.mail),
                              labelText: "Email",
                              labelStyle: TextStyle(
                                fontSize: 16,
                                color: Colors.black,
                              ),
                            ),
                            keyboardType: TextInputType.emailAddress,
                            onChanged: (val) {
                              email = val;
                            },       
                            validator: (val) {
                              return val.isEmpty ? 'Please enter your email' : null;
                            },
                          ),
                          SizedBox(
                            height: 10.0,
                          ),
                          TextFormField(
                            decoration: InputDecoration(
                              prefixIcon: Icon(Icons.lock),
                              labelText: "Password",
                              labelStyle: TextStyle(
                                fontSize: 16,
                                color: Colors.black,
                              ),
                            ),
                            obscureText: true,
                            keyboardType: TextInputType.text,
                            onChanged: (val) {
                              password = val;
                            },       
                            validator: (val) {
                              return val.isEmpty ? 'Please enter a strong password' : null;
                            },
                          ),
                          SizedBox(
                            height: 15.0,
                          ),
                          TextField(
                            decoration: InputDecoration(
                              prefixIcon: Icon(Icons.perm_identity_sharp),
                              labelText: "Referral Code (optional)",
                              labelStyle: TextStyle(
                                fontSize: 16,
                                color: Colors.black,
                              ),
                            ),
                            keyboardType: TextInputType.text,
                            onChanged: (val) {
                              refCode = val;
                            },       
                          ),
                          SizedBox(
                            height: 10.0,
                          ),
                          OutlinedButton(
                            onPressed: () {
                              if(_formKey.currentState.validate()) {
                                _auth.registerWithEmailAndPassword(firstname, lastname, email, password, businessName, phone, refCode);
                                Navigator.of(context).pushNamed('/dashboard');
                              }
                            },
                            style: OutlinedButton.styleFrom(
                              shape: StadiumBorder(),
                              backgroundColor: Color(0xfff26836),
                              minimumSize: Size(400.0, 45.0),
                            ),
                            child: Text(
                              'Sign Up',
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
                              "Already have account?",
                              style: TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.normal,
                                color: Colors.black,
                              ),
                            ),
                            TextButton(
                              onPressed: () {
                                Navigator.push(context, MaterialPageRoute(
                                    builder: (BuildContext context) {
                                  return Login();
                                }));
                              },
                              child: Text(
                                "Sign In",
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
          ],
        ),
      );
  }
}
