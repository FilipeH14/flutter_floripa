import 'package:flutter/material.dart';
import 'package:flutter_floripa/app/modules/auth/login/login_page.dart';
import 'package:flutter_floripa/app/modules/floripa_app_module.dart';

class FloripaInit extends StatelessWidget {
  const FloripaInit({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const FloripaAppModule(
      child: MaterialApp(
        title: 'Flutter Floripa',
        debugShowCheckedModeBanner: false,
        home: LoginPage(),
      ),
    );
  }
}
