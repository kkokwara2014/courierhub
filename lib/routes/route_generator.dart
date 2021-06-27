import 'package:courierhub/dashboard.dart';
import 'package:courierhub/login.dart';
import 'package:courierhub/pages/earnings.dart';
import 'package:courierhub/pages/landing.dart';
import 'package:courierhub/pages/settings.dart';
import 'package:courierhub/pages/support.dart';
import 'package:courierhub/pages/triphistory.dart';
import 'package:courierhub/pages/wallet.dart';
import 'package:courierhub/pages/worksummary.dart';
import 'package:courierhub/register.dart';
import 'package:flutter/material.dart';
// import 'package:courierhub/main.dart';

class RouteGenerator{

  static Route<dynamic> generateRoute(RouteSettings settings){
    final args=settings.arguments;

    switch (settings.name) {
      case '/' :
        return MaterialPageRoute(builder: (context)=>LandingPage());
        break;
      // case '/' :
      //   return MaterialPageRoute(builder: (context)=>LandingPage());
      //   break;
      case '/login':
        return MaterialPageRoute(builder: (context)=>Login());
        break;
      case '/register':
        return MaterialPageRoute(builder: (context)=>Register());
        break;
      case '/earnings':
        return MaterialPageRoute(builder: (context)=>Earnings());
        break;
      case '/settings':
        return MaterialPageRoute(builder: (context)=>Settings());
        break;
      case '/support':
        return MaterialPageRoute(builder: (context)=>Support());
        break;
      case '/triphistory':
        return MaterialPageRoute(builder: (context)=>TripHistory());
        break;
      case '/wallet':
        return MaterialPageRoute(builder: (context)=>Wallet());
        break;
      case '/worksummary':
        return MaterialPageRoute(builder: (context)=>WorkSummary());
        break;
      case '/dashboard':
        return MaterialPageRoute(builder: (context)=>Dashboard());
        break;
      default:
        return MaterialPageRoute(builder: (context)=>LandingPage());
    }
  }
}

