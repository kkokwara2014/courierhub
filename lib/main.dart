import 'package:courierhub/home.dart';
import 'package:courierhub/routes/route_generator.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    // return StreamProvider<UserModel>.value(
    //   create:,
    //   value: AuthService().user,
      return MaterialApp(
      debugShowCheckedModeBanner: false,

      // //setting up routes
      initialRoute: '/',
      onGenerateRoute: RouteGenerator.generateRoute,
      
      home: HomeScreen(),
       
    );
  }
}

