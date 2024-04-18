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

  final PageController controller = PageController(initialPage: 1);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text(widget.title),
      ),
      body: PageView(
        scrollDirection: Axis.vertical,
        controller: controller,
        onPageChanged: (int index) {
          print('$indexページに変わりました');
        },
        children: [
          Container(
            width: double.infinity,
            height: double.infinity,
            color: Colors.red,
          ),
          Container(
            width: double.infinity,
            height: double.infinity,
            color: Colors.blue,
          ),
          Container(
            width: double.infinity,
            height: double.infinity,
            color: Colors.green,
          ),
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
