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
        child: Container(
          // color: Colors.blue,
          child: Container(
            width: 200,
            height: 200,
            // color: Colors.red,
            // padding: const EdgeInsets.all(10),
            // margin: const EdgeInsets.all(10),
            constraints: BoxConstraints(
              minWidth: 300,
            ),
            decoration: BoxDecoration(
              color: Colors.red,
              borderRadius: BorderRadius.only(topRight: Radius.circular(50)),
              // gradient: LinearGradient(
              //   begin: Alignment.topCenter,
              //   end: Alignment.bottomCenter,
              //   colors: [Colors.red, Colors.blue],
              // ),
              boxShadow: const [
                BoxShadow(
                    color: Colors.black,
                    spreadRadius: 10,
                    blurRadius: 10,
                    offset: Offset(10, 10))
              ],
            ),
            child: const Text('テスト'),
          ),
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
