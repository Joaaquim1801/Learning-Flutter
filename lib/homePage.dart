import 'package:flutter/material.dart';
import 'package:flutter_app/appControler.dart';

class HomePage extends StatefulWidget {
  @override
  State<HomePage> createState() {
    return HomePageState();
  }
}

class HomePageState extends State<HomePage> {
  int counter = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Flutter",
          style: TextStyle(fontWeight: FontWeight.bold, fontSize: 40),
        ),
        backgroundColor: Colors.lightBlue,
      ),
      body: Center(
        child: Switch(
          value: Appcontroler.instance.isDarkTheme,
          onChanged: (value) {
            Appcontroler.instance.changeTheme();
          },
        ),
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.add),
        backgroundColor: Colors.lightBlue,
        onPressed: () {
          setState(() {
            counter++;
          });
        },
      ),
    );
  }
}
