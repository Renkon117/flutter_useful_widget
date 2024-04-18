import 'package:flutter/material.dart';

class Lecture extends StatefulWidget {
  const Lecture({super.key, required this.title});

  final String title;

  @override
  State<Lecture> createState() => _LectureState();
}

class _LectureState extends State<Lecture> {
  Future<String?> getText() async {
    await Future.delayed(const Duration(seconds: 1));
    try {
      throw Exception('エラー発生');
      return '文字列を取得しました';
    } catch (e) {
      return null;
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text(widget.title),
      ),
      body: FutureBuilder<String?>(
        future: getText(),
        builder: (context, snapshot) {
          if (snapshot.connectionState == ConnectionState.waiting) {
            return const Center(
              child: CircularProgressIndicator(),
            );
          }
          if (snapshot.hasError) {
            return Center(
              child: Text(snapshot.error.toString()),
            );
          }

          if (snapshot.hasData) {
            return Center(child: Text(snapshot.data!));
          }
          return const Center(child: Text('データがありません'));
        },
      ),
    );
  }
}
