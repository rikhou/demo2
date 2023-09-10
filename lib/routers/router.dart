import 'package:flutter/material.dart';
import 'package:flutter_huntfish_ca/pages/login.dart';
import 'package:flutter_huntfish_ca/pages/signin.dart';

const routeLogin = '/login';
const routeSignIn = '/signIn';

Route _onGenerateRoute(RouteSettings settings) {
  late Widget page;
  switch (settings.name) {
    case routeLogin:
      page = Login();
      break;
    case routeSignIn:
      page = SignIn();
      break;
    // case routeEntrance:
    //   page = EntrancePage();
    //   break;
  }

  return MaterialPageRoute<dynamic>(
    builder: (context) {
      return page;
    },
    settings: settings,
  );
}
