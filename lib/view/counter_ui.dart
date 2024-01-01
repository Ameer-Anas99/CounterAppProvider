import 'package:counter_app/controller/counter_provider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class CounterPage extends StatefulWidget {
  const CounterPage({super.key});

  @override
  State<CounterPage> createState() => _CounterPageState();
}

class _CounterPageState extends State<CounterPage> {
  // int counter = 0;
  @override
  Widget build(BuildContext context) {
    final count = Provider.of<CounterProvider>(context, listen: false);
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.teal,
        title: const Center(child: Text("counter app")),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(
            child: Consumer<CounterProvider>(
              builder: (context, value, child) {
                return Text(
                  // "$counter",
                  value.counter.toString(),

                  style: const TextStyle(
                      fontSize: 30, fontWeight: FontWeight.w600),
                );
              },
            ),
          ),
          ElevatedButton(
            onPressed: () {
              // incrementcounter();
              count.increese();
            },
            child: const Text(
              "Add",
              style: TextStyle(fontSize: 20, color: Colors.green),
            ),
          ),
          ElevatedButton(
            onPressed: () {
              count.reduce();
            },
            child: const Text(
              "Remove",
              style: TextStyle(fontSize: 18, color: Colors.red),
            ),
          ),
        ],
      ),
    );
  }

  // void incrementcounter() {
  //   setState(() {
  //     counter++;
  //   });
  // }
}
