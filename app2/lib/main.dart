import 'package:flutter/material.dart';
import './transaction.dart';

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
  final List<Transaction> transactions = [
    Transaction(
      id: 't1',
      amount: 1423.23,
      title: "Shoes",
      date: DateTime.now(),
    ),
    Transaction(
      id: 't2',
      amount: 723.23,
      title: "Groceries",
      date: DateTime.now(),
    ),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Personal Expenses App"),
      ),
      body: Column(
        // mainAxisAlignment: MainAxisAlignment.spaceAround,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Card(
            elevation: 10,
            color: Colors.lightBlueAccent,
            child: Container(
                width: double.infinity,
                child: const Text(
                  "Expenses Chart",
                  style: TextStyle(
                    fontSize: 23,
                    color: Colors.white,
                  ),
                )),
          ),
          Column(
            children: transactions.map((tx) {
              return Card(
                child: (Row(
                  children: [
                    Container(
                      decoration: BoxDecoration(
                        border: Border.all(color: Colors.purple, width: 2),
                      ),
                      padding: const EdgeInsets.all(15),
                      margin: const EdgeInsets.symmetric(
                        horizontal: 15,
                        vertical: 10,
                      ),
                      child: Text(
                        tx.amount.toString(),
                        style: const TextStyle(
                            fontWeight: FontWeight.bold,
                            color: Colors.purple,
                            fontSize: 20),
                      ),
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          tx.title,
                          style: const TextStyle(
                              fontSize: 17, fontStyle: FontStyle.italic),
                        ),
                        Text(
                          tx.date.toString(),
                          style:
                              TextStyle(color: Colors.grey[700], fontSize: 12),
                        ),
                      ],
                    ),
                  ],
                )),
              );
            }).toList(),
          ),
        ],
      ),
    );
  }
}
