import 'package:flutter/material.dart';
import 'dart:math';

void main() {
  runApp(
    MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.indigo,
        appBar: AppBar(
          title: const Text(' تطابق صورة'),
          backgroundColor: Colors.indigo[800],
        ),
        body: const Imagepage(),
      ),
    ),
  );
}

class Imagepage extends StatefulWidget {
  const Imagepage({super.key});

  @override
  State<Imagepage> createState() => _ImagepageState();
}

class _ImagepageState extends State<Imagepage> {
  var x = 2;
  var y = 1;
  void changeimage() {
    x = Random().nextInt(8) + 1;
    y = Random().nextInt(8) + 1;
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        Text(
          x == y ? 'مبروووكِِ لقد نجحت !' : 'حاول مرة أخرى',
          style: const TextStyle(
            fontSize: 40,
            color: Colors.white,
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Row(
            children: [
              Expanded(
                child: FloatingActionButton(
                  onPressed: () {
                    setState(() {
                      changeimage();
                    });
                  },
                  child: Image.asset('images/$x.png'),
                ),
              ),
              Expanded(
                child: FloatingActionButton(
                  onPressed: () {
                    setState(() {
                      changeimage();
                    });
                  },
                  child: Image.asset('images/$y.png'),
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
