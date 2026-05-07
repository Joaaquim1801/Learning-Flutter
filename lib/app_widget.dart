import 'package:flutter/material.dart';
import 'package:flutter_app/appControler.dart';
import 'package:flutter_app/homePage.dart';
import 'package:flutter_app/loginPage.dart';

class AppWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return AnimatedBuilder(
      animation: Appcontroler.instance,
      builder: (context, child) {
        return MaterialApp(
          theme: ThemeData(
            primaryColor: Colors.lightBlue,
            brightness: Appcontroler.instance.isDarkTheme
                ? Brightness.dark
                : Brightness.light,
          ),
          initialRoute: '/',
          routes: {
            '/': (context) => LoginPage(),
            '/home': (context) => HomePage()
          },
          debugShowCheckedModeBanner: false,
        );
      },
    );
  }
}
