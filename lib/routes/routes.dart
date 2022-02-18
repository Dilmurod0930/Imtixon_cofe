import 'package:exam/screens/imtixon1_page.dart';
import 'package:exam/screens/imtixon2_page.dart';
import 'package:exam/screens/imtixon3_page.dart';
import 'package:exam/screens/imtixon_home_page.dart';
import 'package:flutter/material.dart';

class MyRoute {
  Route? onGenerateRoute(RouteSettings s) {
    var args = s.arguments;

    switch (s.name) {
      case '/':
        return MaterialPageRoute(builder: (_) => MyImtixonHom());
      case '/log_in':
        return MaterialPageRoute(builder: (_) => LogInPage());
      case '/sign_up':
        return MaterialPageRoute(builder: (_) => SignUpPage());

    }
  }
}
