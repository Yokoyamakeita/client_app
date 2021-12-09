import 'package:firstapp/content_page1.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(

        primarySwatch: Colors.red,
      ),
      home: const MyHomePage(title: 'Microsoft Intel zemi app'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);



  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
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
          title: Text(widget.title),
        ),
        body: Center(
          child:Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
                Text(
                  '～BodyMaker~料理管理システム',
                  style: TextStyle(
                    fontSize: 25,
                  ),
                ),
                Text(''),
                Text('TOP画面',
                  style: TextStyle(
                  fontSize: 40,
                ),
                ),
                Text(''),
                SizedBox(
                  width: 100,
                  height:70,
                  child:ElevatedButton(
                  child: Text('Start',
                    style: TextStyle(
                      fontSize: 20,
                    ),
                  ),
                    style: ElevatedButton.styleFrom(
                      primary: Colors.redAccent,
                      onPrimary: Colors.white,
                    ),
                    onPressed: (){
                    Navigator.push(
                      context,
                    MaterialPageRoute(builder: (context) => ContentPage1(),
                    ),
                    );
                    },
                  ),
                ),
        ])));
  }
}

