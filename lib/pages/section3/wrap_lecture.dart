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
      body: Center(
        child: Wrap(
          alignment: WrapAlignment.spaceBetween,
          runSpacing: 100,
          spacing: 100,
          direction: Axis.horizontal,
          children: <Widget>[
            const Text(
              '0',
              style: TextStyle(fontSize: 100),
            ),
            const Text(
              '0',
              style: TextStyle(fontSize: 100),
            ),
            const Text(
              '0',
              style: TextStyle(fontSize: 100),
            ),
            const Text(
              '0',
              style: TextStyle(fontSize: 100),
            ),
            const Text(
              '0',
              style: TextStyle(fontSize: 100),
            ),
            const Text(
              '0',
              style: TextStyle(fontSize: 100),
            ),
            const Text(
              '0',
              style: TextStyle(fontSize: 100),
            ),
            const Text(
              '0',
              style: TextStyle(fontSize: 100),
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter,
        tooltip: 'Increment',
        child: const Icon(Icons.add),
      ),
    );
  }
}