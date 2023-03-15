import 'package:flutter/material.dart';
import 'package:flutter_floripa/app/modules/auth/login/login_page.dart';
import 'package:flutter_floripa/app/routes/routes_name.dart';

class RoutesPage {
  static final routes = {
    RoutesName.auth: (context) => const LoginPage(),
  };
}
