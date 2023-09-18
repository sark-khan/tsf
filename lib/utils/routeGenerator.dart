import 'package:flutter/material.dart';

import 'package:tsf_local/screens/Login.dart';
// import 'package:tie/screens/homePage.dart';
// import 'package:tie/screens/notificationsPage.dart';
// import 'package:tie/screens/profilePage.dart';
// import 'package:tie/screens/searchPage.dart';
// import 'package:tie/screens/splash.dart';

class RouteGenerator {
  static Route<dynamic> generateRoute(RouteSettings settings) {
    final args = settings.arguments;
    switch (settings.name) {
      case '/':
        return MaterialPageRoute(builder: (_) => Login());
      case '/notifications':
      //   return MaterialPageRoute(builder: (_) => NotificationsPage());
      // case '/profile':
      //   return MaterialPageRoute(builder: (_) => ProfilePage());
      // case '/search':
      //   return MaterialPageRoute(builder: (_) => SearchPage());
      // case '/home':
      //   return MaterialPageRoute(builder: (_) => HomePage());
      // case '/edit':
      //   return MaterialPageRoute(builder: (_) => EditProfile());
      default:
        return _errorRoute();
    }
  }

  static Route<dynamic> _errorRoute() {
    return MaterialPageRoute(builder: (_) {
      return Scaffold(
        appBar: AppBar(
          title: Text('Error'),
        ),
        body: Center(
          child: Text('ERROR'),
        ),
      );
    });
  }
}
