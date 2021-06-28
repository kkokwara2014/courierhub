import 'package:courierhub/dashboard.dart';
import 'package:courierhub/getstarted_register.dart';
import 'package:courierhub/register.dart';
import 'package:courierhub/services/auth.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

class Login extends StatefulWidget {
  @override
  _LoginState createState() => _LoginState();
}

class _LoginState extends State<Login> {
  final _formKey = GlobalKey<FormState>();
  final _auth = AuthService();
  var emailController = TextEditingController();
  var passwordController = TextEditingController();
  String email = '';
  String password = '';

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: Center(
          child: Padding(
            padding: const EdgeInsets.all(20.0),
            child: SingleChildScrollView(
              reverse: true,
              child: Form(
                key: _formKey,
                child: Column(
                  children: [
                    SizedBox(
                      height: 50,
                    ),
                    Text(
                      'Welcome',
                      style: TextStyle(
                          fontSize: 30,
                          fontWeight: FontWeight.bold,
                          color: Color(0xff322f6a)),
                    ),
                    SizedBox(
                      height: 30,
                    ),
                    
                    SizedBox(
                      height: 25,
                    ),
                    Text(
                      'Please log in',
                      style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.normal,
                          color: Color(0xff322f6a)),
                    ),
                    SizedBox(
                      height: 30.0,
                    ),
                    TextFormField(
                      controller: emailController,
                      decoration: InputDecoration(
                        prefixIcon: Icon(Icons.mail),
                        labelText: "Email or Phone Number",
                        labelStyle: TextStyle(
                          fontSize: 16,
                          color: Colors.black,
                        ),
                      ),
                      keyboardType: TextInputType.text,
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
                      controller: passwordController,
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
                        return val.isEmpty ? 'Please enter your password' : null;
                      },
                    ),
                    SizedBox(
                      height: 15.0,
                    ),
                    OutlinedButton(
                      onPressed: () async {
                        if(_formKey.currentState.validate()) {
                          
                          User user = await _auth.signInWithEmailAndPassword(
                            email, password
                          ).catchError((e) {
                            //SignIn(requestingScreen: '', message: 'An error occurred. Please check your data connection.');
                          });
                          if(user != null){
                            Navigator.of(context).pop();
                            Navigator.of(context).pushNamed('/dashboard');
                          }
                        }
                      },
                      style: OutlinedButton.styleFrom(
                        shape: StadiumBorder(),
                        backgroundColor: Color(0xfff26836),
                        minimumSize: Size(400.0, 45.0),
                      ),
                      child: Text(
                        'Login',
                        style: TextStyle(
                          fontSize: 18,
                          color: Colors.white,
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text('$email'),
                        SizedBox(
                          height: 15,
                        ),
                        TextButton(
                          onPressed: () {},
                          child: Text(
                            "Forgot Password?",
                            style: TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.bold,
                                color: Color(0xfff26836)),
                          ),
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              "Don't have account?",
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
                                  return GetStartedRegister();
                                }));
                              },
                              child: Text(
                                "Sign Up?",
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
          ),
        ),
      ),
    );
  }
}
