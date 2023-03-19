import 'package:flutter/material.dart';
import 'package:flutter_work_place/sport_category.dart';

void main() {

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Enum Test',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: 'Flutter Enum Demo'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;
  List temp = <String>[];

  SportCategoryConverter sportCategory = SportCategoryConverter();

  void _incrementCounter() {
    setState(() {
      _counter++;
      temp.add(sportCategory.getSportStr(_counter));
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Text(
              'Enum　カテゴリー　テスト',
            ),
            Text(
              '$_counter',
              style: Theme.of(context).textTheme.headlineMedium,
            ),
            Flexible(
              child: ListView.builder(
                  itemCount: temp.length,
                  itemBuilder: (BuildContext context, int index) {
                    if (temp.length == 5) {
                      return const Text('リスト表示上限です');
                    } else {
                      return Column(
                        children: [
                          Text(temp[index]),
                        ],
                      );
                    }
                  }),
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
