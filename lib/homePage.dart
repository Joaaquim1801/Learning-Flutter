import 'package:flutter/material.dart';

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
        child: GestureDetector(
          child: Text("Counter: $counter", style: TextStyle(fontSize: 25)),
          onTap: () {
            setState(() {
              counter++;
            }); //O setState chama o builder para poder atualizar o estado
            print("Counter: $counter");
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
