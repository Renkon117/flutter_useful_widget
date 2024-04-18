import 'package:flutter/material.dart';

class Lecture extends StatefulWidget {
  const Lecture({super.key, required this.title});

  final String title;

  @override
  State<Lecture> createState() => _LectureState();
}

class _LectureState extends State<Lecture> {
  int _counter = 0;

  bool isApproved = true;

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
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Text(
              'You have pushed the button this many times:',
            ),
            Text(
              '$_counter',
              style: Theme.of(context).textTheme.headlineMedium,
            ),
            Radio(
              value: true,
              groupValue: isApproved,
              onChanged: (Object? value) {
                if (value == null) {
                  return;
                }
                value as bool;
                isApproved = value;
                setState(() {});
              },
            ),
            Radio(
              value: false,
              groupValue: isApproved,
              activeColor: Colors.red,
              onChanged: (Object? value) {
                if (value == null) {
                  return;
                }
                value as bool;
                isApproved = value;
                setState(() {});
              },
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
