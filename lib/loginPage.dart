import 'package:flutter/material.dart';
import 'package:flutter_app/homePage.dart';

class LoginPage extends StatefulWidget {
  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  String email = '';
  String password = '';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: SizedBox(
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height,
          child: Padding(
            padding: const EdgeInsets.all(24.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                TextField(
                  onChanged: (text) {
                    email = text;
                  },
                  keyboardType: TextInputType.emailAddress,
                  decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    labelText: 'Email',
                  ),
                ),
                Container(height: 10),
                TextField(
                  onChanged: (text) {
                    password = text;
                  },
                  obscureText: true,
                  decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    labelText: 'Password',
                  ),
                ),
                Container(height: 15),
                ElevatedButton(
                  onPressed: () {
                    if (email == "john@hotmail.com" &&
                        password == "1234") {
                      print("Access Granted");
                      /* MANUAL METHOD, LITERALLY CREATING THE ROUTE
                      Navigator.of(context).pushReplacement(
                        MaterialPageRoute(builder: (context) => HomePage()),
                      );
                      */

                      //AUTOMATIC ROUTE DEFINED IN APP_WIDGET
                      Navigator.of(context).pushNamed("/home");
                    } else {
                      print("Invalid login or password!");
                    }
                  },
                  child: Text("Entrar"),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
