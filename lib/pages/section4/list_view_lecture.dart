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
        child: ListView.separated(
          separatorBuilder: (context, index) {
            return Container(
              color: Colors.blue,
              height: 20,
            );
          },
          itemCount: 10,
          itemBuilder: (context, index) {
            return Container(
              alignment: Alignment.center,
              width: 200,
              height: 100,
              color: Colors.red,
              margin: const EdgeInsets.symmetric(vertical: 10),
              child:  Text('$index'),
            );
          },
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
