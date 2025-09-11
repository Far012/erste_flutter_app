import 'package:flutter/material.dart';

class Helloworld extends StatelessWidget {
  Helloworld({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color.fromARGB(121, 76, 47, 19),
        title: Text("Mein Hello World"),
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
                "Der Text",
                style: TextStyle(fontSize: 32, fontWeight: FontWeight.bold),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
