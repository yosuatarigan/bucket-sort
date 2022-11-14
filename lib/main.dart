import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Bucket Sort',
      theme: ThemeData(
        // This is the theme of your application.
        //
        // Try running your application with "flutter run". You'll see the
        // application has a blue toolbar. Then, without quitting the app, try
        // changing the primarySwatch below to Colors.green and then invoke
        // "hot reload" (press "r" in the console where you ran "flutter run",
        // or simply save your changes to "hot reload" in a Flutter IDE).
        // Notice that the counter didn't reset back to zero; the application
        // is not restarted.
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: 'Bucket Sort'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  // This widget is the home page of your application. It is stateful, meaning
  // that it has a State object (defined below) that contains fields that affect
  // how it looks.

  // This class is the configuration for the state. It holds the values (in this
  // case the title) provided by the parent (in this case the App widget) and
  // used by the build method of the State. Fields in a Widget subclass are
  // always marked "final".

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  List numbernya = [2, 4, 9, 12, 6, 8, 7, 3, 5];
  List buket1 = [];
  List buket2 = [];
  List buket3 = [];
  List hasil = [];

  void sortbucket() {
    for (var data in numbernya) {
      if (data >= 9) {
        buket3.add(data);
      } else if (data >= 6) {
        buket2.add(data);
      } else {
        buket1.add(data);
      }
    }
    hasil.addAll(buket1);
    hasil.addAll(buket2);
    hasil.addAll(buket3);
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    // This method is rerun every time setState is called, for instance as done
    // by the _incrementCounter method above.
    //
    // The Flutter framework has been optimized to make rerunning build methods
    // fast, so that you can just rebuild anything that needs updating rather
    // than having to individually change instances of widgets.
    return Scaffold(
      appBar: AppBar(
        // Here we take the value from the MyHomePage object that was created by
        // the App.build method, and use it to set our appbar title.
        title: Text(widget.title),
      ),
      body: Center(
        // Center is a layout widget. It takes a single child and positions it
        // in the middle of the parent.
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Container(
              padding: EdgeInsets.all(8),
              decoration:
                  BoxDecoration(border: Border.all(color: Colors.black)),
              child: Text(
                'List Number ${numbernya.toString().replaceAll('[', '').replaceAll(']', '')}',
              ),
            ),
            SizedBox(height: 10),
            if (buket1.isNotEmpty)
              Container(
                padding: EdgeInsets.all(8),
                decoration:
                    BoxDecoration(border: Border.all(color: Colors.black)),
                child: Text(
                  'Buket 1 = ${buket1.toString().replaceAll('[', '').replaceAll(']', '')}',
                ),
              ),
            SizedBox(height: 10),
            if (buket2.isNotEmpty)
              Container(
                padding: EdgeInsets.all(8),
                decoration:
                    BoxDecoration(border: Border.all(color: Colors.black)),
                child: Text(
                  'Buket 2 = ${buket2.toString().replaceAll('[', '').replaceAll(']', '')}',
                ),
              ),
            SizedBox(height: 10),
            if (buket3.isNotEmpty)
              Container(
                padding: EdgeInsets.all(8),
                decoration:
                    BoxDecoration(border: Border.all(color: Colors.black)),
                child: Text(
                  'Buket 3 = ${buket3.toString().replaceAll('[', '').replaceAll(']', '')}',
                ),
              ),
            SizedBox(height: 10),
            if (hasil.isNotEmpty)
              Container(
                padding: EdgeInsets.all(8),
                decoration:
                    BoxDecoration(border: Border.all(color: Colors.black)),
                child: Text(
                  'Hasil = ${hasil.toString().replaceAll('[', '').replaceAll(']', '')}',
                ),
              ),
          ],
        ),
      ),
      floatingActionButton: Row(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          FloatingActionButton(
            onPressed: sortbucket,
            tooltip: 'sort',
            child: const Text('Sort'),
          ),
          FloatingActionButton(
            backgroundColor: Colors.red,
            onPressed: () {
              setState(() {
                buket1 = [];
                buket2 = [];
                buket3 = [];
                hasil = [];
              });
            },
            tooltip: 'reset',
            child: const Text('Reset'),
          ),
        ],
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
