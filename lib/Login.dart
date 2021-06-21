import 'package:courierhub/register.dart';
import 'package:flutter/material.dart';

class Login extends StatefulWidget {
  @override
  _LoginState createState() => _LoginState();
}

class _LoginState extends State<Login> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Text('Login'),
          centerTitle: true,
          backgroundColor: Color(0xfff26836),
        ),
        body: Center(
          child: Padding(
            padding: const EdgeInsets.all(20.0),
            child: Column(
              children: [

                Text(
                  'CourierHub!',
                  style: TextStyle(
                      fontSize: 30,
                      fontWeight: FontWeight.bold,
                      color: Color(0xff322f6a)),
                ),
                Text(
                  'Integrated Courier Service Platform you can trust.',
                  style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.normal,
                      color: Color(0xfff26836)),
                ),
                Divider(
                  thickness: 5,
                  height: 20,
                ),
                SizedBox(height: 30,),               
                Text(
                  'Login with your credentials',
                  style: TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.bold,
                      color: Color(0xff322f6a)),
                ),
                SizedBox(height: 30.0,),
                TextField(
                  decoration: InputDecoration(
                    hintText: "Your Email",
                    labelText: "Email",
                    labelStyle: TextStyle(
                      fontSize: 16,
                      color: Colors.black,
                    ),
                    border: OutlineInputBorder()
                  ),
                  keyboardType: TextInputType.emailAddress,
                ),
                SizedBox(height: 10.0,),
                TextField(
                  decoration: InputDecoration(
                    hintText: "Your Password",
                    labelText: "Password",
                    labelStyle: TextStyle(
                      fontSize: 16,
                      color: Colors.black,
                    ),
                    border: OutlineInputBorder()
                  ),
                  keyboardType: TextInputType.text,
                ),
                SizedBox(height: 10.0,),
                Row(
                  mainAxisSize: MainAxisSize.min,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    OutlinedButton(
                      onPressed: () {},
                      child: Text(
                        'Log In',
                        style: TextStyle(
                          fontSize: 18,
                          color: Color(0xff322f6a),
                        ),
                      ),
                    ),
                    SizedBox(width: 5,),
                    OutlinedButton(
                      onPressed: () {
                        Navigator.push(context, MaterialPageRoute(builder: (BuildContext context){
                          return Register();
                        }));
                      },
                      child: Text(
                        'Sign Up',
                        style: TextStyle(
                          fontSize: 18,
                          color: Color(0xff322f6a),
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
