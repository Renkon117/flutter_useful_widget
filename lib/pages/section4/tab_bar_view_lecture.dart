import 'package:flutter/material.dart';

class Lecture extends StatefulWidget {
  const Lecture({super.key, required this.title});

  final String title;

  @override
  State<Lecture> createState() => _LectureState();
}

class _LectureState extends State<Lecture> with SingleTickerProviderStateMixin {
  int _counter = 0;
  TabController? controller;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    controller = TabController(length: 3, vsync: this);
  }

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
          children: <Widget>[
            Container(
              color: Colors.red,
              child: TabBar(
                controller: controller,
                tabs: const [
                  Tab(text: '検索'),
                  Tab(text: 'ホーム'),
                  Tab(text: 'マイページ'),
                ],
              ),
            ),
            Expanded(
              child: TabBarView(
                controller: controller,
                children: const [
                  Center(
                    child: Text('検索ページ'),
                  ),
                  Center(
                    child: Text('ホームページ'),
                  ),
                  Center(
                    child: Text('マイページ'),
                  ),
                ],
              ),
            )
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
