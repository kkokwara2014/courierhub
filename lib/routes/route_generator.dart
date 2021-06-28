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
import 'package:courierhub/update_delivery_partner.dart';
import 'package:flutter/material.dart';

import '../pages/landing.dart';
// import 'package:courierhub/main.dart';

class RouteGenerator {

  static Route<dynamic> generateRoute(RouteSettings settings) {
    //Getting arguments passed in while calling Navigator.pushNamed
    final args = settings.arguments;

    switch (settings.name) {
      case '/':
        return MaterialPageRoute(builder: (_) => LandingPage());
      case '/login':
        return MaterialPageRoute(
            builder: (_) {
              return Login();
            }
        );
      case '/register':
        return MaterialPageRoute(
          builder: (_) =>
              Register(),
        );
      case '/earnings':
        return MaterialPageRoute(
          builder: (_) =>
              Earnings(),
        );
      case '/settings':
        return MaterialPageRoute(
          builder: (_) =>
              Settings(),
        );
      case '/support':
        return MaterialPageRoute(
          builder: (_) =>
            Support(),
        );
      case '/triphistory':
        return MaterialPageRoute(
          builder: (_) =>
            TripHistory(
          ),
        );
      case '/wallet':
        return MaterialPageRoute(
          builder: (_) =>
              Wallet(),
        );
      case '/worksummary':
        return MaterialPageRoute(
            builder: (_) {
              return WorkSummary();
            }
        );
      case '/dashboard':
        return MaterialPageRoute(
          builder: (_) =>
              Dashboard(),
        );
      case '/update-profile':
        return MaterialPageRoute(
          builder: (_) =>
              UpdateDeliveryPartnerProfile(),
        );
      default:
        return MaterialPageRoute(builder: (_) => LandingPage());
    }
  }
}