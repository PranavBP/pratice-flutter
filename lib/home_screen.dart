import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      _counter += 1;
    });
  }

  void _decrementCounter() {
    if (_counter > 0) {
      setState(() {
        _counter -= 1;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    var appBar = AppBar(
      centerTitle: false,
      backgroundColor: Colors.deepPurple,
      title: const Text(
        "Home",
        style: TextStyle(
          fontWeight: FontWeight.bold,
          fontSize: 30.0,
          color: Colors.white,
        ),
      ),
      actions: [
        IconButton(
            onPressed: () {
              
            },
            icon: const Icon(
              Icons.add,
              color: Colors.white,
            ))
      ],
    );
    return Scaffold(
      appBar: appBar,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text("You have clicked the counter this many times: "),
            Text(
              "$_counter",
              style: const TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 30.0,
              ),
            ),
            ElevatedButton(
              onPressed: _incrementCounter,
              child: const Text(
                "Increment",
              ),
            ),
            const SizedBox(
              height: 30,
            ),
            ElevatedButton.icon(
              style:
                  ElevatedButton.styleFrom(backgroundColor: Colors.deepPurple),
              onPressed: _decrementCounter,
              icon: const Icon(
                Icons.arrow_downward,
                color: Colors.white,
              ),
              label: const Text(
                "Decrement",
                style:
                    TextStyle(fontWeight: FontWeight.bold, color: Colors.white),
              ),
            )
          ],
        ),
      ),
    );
  }
}
