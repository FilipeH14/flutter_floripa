import 'package:flutter/material.dart';
import 'package:flutter_floripa/app/modules/floripa_app_module.dart';
import 'package:flutter_floripa/app/routes/routes_name.dart';
import 'package:flutter_floripa/app/routes/routes_page.dart';
import 'package:flutter_floripa/app/shared/styles/floripa_colors.dart';

class FloripaInit extends StatelessWidget {
  const FloripaInit({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return FloripaAppModule(
      child: MaterialApp(
        title: 'Flutter Floripa',
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          primaryColor: FloripaColors.i.primary,
          colorScheme: ColorScheme.fromSeed(
            seedColor: FloripaColors.i.primary,
            primary: FloripaColors.i.primary,
            secondary: FloripaColors.i.secondary,
          ),
          inputDecorationTheme: InputDecorationTheme(
            fillColor: Colors.grey[200],
            labelStyle: const TextStyle(color: Colors.grey),
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(10),
              borderSide: BorderSide(color: Colors.grey[200]!),
            ),
            enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(10),
              borderSide: BorderSide(color: Colors.grey[200]!),
            ),
            focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(10),
              borderSide: BorderSide(color: Colors.grey[200]!),
            ),
            filled: true,
            isDense: true,
            contentPadding: const EdgeInsets.all(5),
          ),
        ),
        initialRoute: RoutesName.auth,
        routes: RoutesPage.routes,
        // home: const LoginPage(),
      ),
    );
  }
}
