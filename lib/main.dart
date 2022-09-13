import 'dart:html';

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
      title: 'MyApp',
      debugShowCheckedModeBanner: false,
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
        primarySwatch: Colors.red,
      ),
      home: const MyHomePage(title: 'MyApp'),
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
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: ListView(
        children: <Widget>[
          Row(
            children: [
              Expanded(
                child: Container(
                  padding: EdgeInsets.all(20.0),
                  child:
                      const Text("Berita Terbaru", textAlign: TextAlign.center),
                ),
              ),
              Expanded(
                child: Container(
                  child: const Text(
                    "Pertandingan Baru",
                    textAlign: TextAlign.center,
                  ),
                ),
              ),
            ],
          ),
          Container(
              decoration:
                  BoxDecoration(border: Border.all(color: Colors.purpleAccent)),
              child: Column(children: <Widget>[
                Padding(
                  padding: EdgeInsets.all(0.0),
                ),
                Image.asset(
                  'images/diego-costa.jpg',
                  fit: BoxFit.fill,
                  width: MediaQuery.of(context).size.width,
                ),
                Container(
                  padding: const EdgeInsets.all(10.0),
                  child: Text(
                    "Costa Mendekat Ke Palmeiras",
                    style: TextStyle(
                        fontSize: 20,
                        color: Colors.black,
                        fontWeight: FontWeight.bold),
                  ),
                ),
                Container(
                  padding: const EdgeInsets.all(10.0),
                  color: Colors.purpleAccent,
                  width: MediaQuery.of(context).size.width,
                  child: const Text("Transfer"),
                ),
              ])),
          Padding(padding: EdgeInsets.all(10.0)),
          Container(
            decoration: BoxDecoration(
                border: Border.all(color: Colors.deepPurpleAccent)),
            child: Column(
              children: [
                Container(
                  decoration: BoxDecoration(
                      border: Border.all(color: Colors.deepPurpleAccent)),
                  child: Row(
                    children: <Widget>[
                      Expanded(
                        child: Image.asset(
                          'images/pique.jpg',
                          fit: BoxFit.fill,
                        ),
                      ),
                      Expanded(
                        child: Container(
                          padding: const EdgeInsets.all(10.0),
                          child: const Text(
                            "Pique Bilang Wasit Untungkan Madrid, Koeman Tepuk Jidat",
                            textAlign: TextAlign.justify,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                  padding: const EdgeInsets.all(5.0),
                  width: MediaQuery.of(context).size.width,
                  child: const Text(
                    "Barcelona Feb 13, 2021",
                    style: TextStyle(
                      fontSize: 15,
                      color: Colors.black,
                    ),
                  ),
                ),
              ],
            ),
          ),
          Padding(padding: EdgeInsets.all(10.0)),
          Container(
            decoration: BoxDecoration(
                border: Border.all(color: Colors.deepPurpleAccent)),
            child: Column(
              children: [
                Container(
                  decoration: BoxDecoration(
                      border: Border.all(color: Colors.deepPurpleAccent)),
                  child: Row(
                    children: <Widget>[
                      Expanded(
                        child: Image.asset(
                          'images/pique.jpg',
                          fit: BoxFit.fill,
                        ),
                      ),
                      Expanded(
                        child: Container(
                          padding: const EdgeInsets.all(10.0),
                          child: const Text(
                            "Pique Bilang Wasit Untungkan Madrid, Koeman Tepuk Jidat",
                            textAlign: TextAlign.justify,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                  padding: const EdgeInsets.all(5.0),
                  width: MediaQuery.of(context).size.width,
                  child: const Text(
                    "Barcelona Feb 13, 2021",
                    style: TextStyle(
                      fontSize: 15,
                      color: Colors.black,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
