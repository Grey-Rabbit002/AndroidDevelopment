import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter App',
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Flutter App"),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          Card(
            elevation: 10,
            color: Colors.lightBlueAccent,
            child: Container(
                width: double.infinity,
                child: const Text(
                  "hi",
                  style: TextStyle(
                    fontSize: 23,
                    color: Colors.white,
                  ),
                )),
          ),
          Card(
            elevation: 10,
            color: Colors.lightBlueAccent,
            child: Container(

                // width:double.infinity,
                child: const Text(
              "hi",
              style: TextStyle(
                fontSize: 23,
                color: Colors.white,
              ),
            )),
          ),
        ],
      ),
    );
  }
}
