import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  List<String> data = [];

  void addData() {
    final incrementing = data.length + 1;
    setState(() {
      data.add(incrementing.toString());
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        floatingActionButton: FloatingActionButton(
          child: Text("+"),
          onPressed: addData,
        ),
        appBar: AppBar(
          title: Text('List View & Text Style'),
        ),
        body: ListView.builder(
          padding: EdgeInsets.all(10),
          itemCount: data.length,
          itemBuilder: (context, i) {
            return Container(
              margin: EdgeInsets.all(8),
              height: 60,
              color: Colors.pinkAccent,
              child: Center(
                child: Text(
                  'Looping Sebanyak' + data[i],
                  style: TextStyle(
                    fontSize: 30,
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    shadows: [
                      Shadow(
                        color: Colors.black,
                        blurRadius: 10.0,
                        offset: Offset(5, 5),
                      ),
                      Shadow(
                        color: Colors.white,
                        blurRadius: 10.0,
                        offset: Offset(-5, -5),
                      ),
                    ],
                  ),
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}
