import 'package:flutter/material.dart';

class Lecture extends StatefulWidget {
  const Lecture({super.key, required this.title});

  final String title;

  @override
  State<Lecture> createState() => _LectureState();
}

class _LectureState extends State<Lecture> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text(widget.title),
      ),
      body: Table(
        border: TableBorder.all(),
        columnWidths: {
          0: IntrinsicColumnWidth(),
          1: IntrinsicColumnWidth(),
          2: FlexColumnWidth()
        },
        children: [
          TableRow(children: [
            Container(
              width: 100,
              height: 50,
              color: Colors.red,
            ),
            Container(
              width: 50,
              height: 50,
              color: Colors.blue,
            ),
            Container(
              width: 50,
              height: 50,
              color: Colors.yellow,
            ),
            Container(
              width: 50,
              height: 50,
              color: Colors.green,
            ),
          ]),
          TableRow(children: [
            Container(
              width: 50,
              height: 50,
              color: Colors.red,
            ),
            Container(
              width: 30,
              height: 50,
              color: Colors.blue,
            ),
            Container(
              width: 50,
              height: 50,
              color: Colors.yellow,
            ),
            Container(
              width: 50,
              height: 50,
              color: Colors.green,
            ),
          ]),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter,
        tooltip: 'Increment',
        child: const Icon(Icons.add),
      ),
    );
  }
}
