import 'package:flutter/material.dart';

class WidgetUebersicht extends StatelessWidget {
  const WidgetUebersicht({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 254, 247, 255),
      appBar: AppBar(
        backgroundColor: Colors.blue,
        title: Text("Aufgabe 1", style: TextStyle(fontWeight: FontWeight.bold)),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          AppAkademieText(),
          SizedBox(height: 16),
          AppAkademieText(),
          SizedBox(height: 16),
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Box(
                letter: letters[0],
                backgroundColor: Colors.red,
                circleColor: const Color.fromARGB(255, 103, 80, 164),
              ),
              SizedBox(width: 16),
              Box(
                letter: letters[1],
                backgroundColor: Colors.green,
                circleColor: const Color.fromARGB(255, 103, 80, 164),
              ),
              SizedBox(width: 16),
              Box(
                letter: letters[2],
                backgroundColor: Colors.blue,
                circleColor: const Color.fromARGB(255, 103, 80, 164),
              ),
            ],
          ),
          SizedBox(height: 24),
          Row(
            children: [
              Box(
                letter: letters[0],
                backgroundColor: Colors.red,
                circleColor: Color.fromARGB(255, 103, 80, 164),
              ),
              SizedBox(width: 16),
              Box(
                letter: letters[0],
                backgroundColor: Colors.green,
                circleColor: Color.fromARGB(255, 103, 80, 164),
              ),
              SizedBox(width: 16),
              Box(
                letter: letters[0],
                backgroundColor: Colors.blue,
                circleColor: Color.fromARGB(255, 103, 80, 164),
              ),
            ],
          ),
          SizedBox(height: 24),
          Column(children: [NameWidget(), NameWidget()]),
        ],
      ),
    );
  }
}

List<String> letters = ["A", "B", "C"];

class Box extends StatelessWidget {
  final String letter;
  final Color backgroundColor;
  final Color circleColor;

  const Box({
    super.key,
    required this.letter,
    required this.backgroundColor,
    required this.circleColor,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100,
      width: 100,
      color: backgroundColor,
      alignment: Alignment.center,
      child: Container(
        height: 30,
        width: 50,
        alignment: Alignment.center,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(16),
          color: circleColor,
        ),
        child: Text(letter),
      ),
    );
  }
}

class AppAkademieText extends StatelessWidget {
  const AppAkademieText({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(
          "Hello App Akademie!",
          style: TextStyle(
            color: Colors.blue,
            fontSize: 24,
            fontWeight: FontWeight.bold,
          ),
        ),
      ],
    );
  }
}

class NameWidget extends StatelessWidget {
  const NameWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Row(
          children: [
            Icon(Icons.face, size: 44),
            SizedBox(width: 44),
            Icon(Icons.face, size: 44),
          ],
        ),
      ],
    );
  }
}
