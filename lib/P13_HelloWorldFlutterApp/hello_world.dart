import 'package:flutter/material.dart';

class Helloworld extends StatelessWidget {
  const Helloworld({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 207, 205, 205),
      appBar: AppBar(
        backgroundColor: Color.fromARGB(121, 222, 119, 22),
        title: Text("Mein Hello World", style: TextStyle(letterSpacing: 2)),
      ),
      body: Center(
        child: Container(
          padding: EdgeInsets.all(16),
          color: const Color.fromARGB(255, 192, 207, 59),
          height: 120,
          width: 220,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                "FarO",
                style: TextStyle(fontSize: 32, fontWeight: FontWeight.bold),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
