import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';
class ContentPage5 extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('お得情報画面'),
      ),
        body: Center(
          child:Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                  SizedBox(
                    width: 300,
                    height: 100,
                    child:ElevatedButton(
                      child: Text('豆知識情報',
                        style: TextStyle(
                        fontSize: 40,
                        ),
                      ),
                      style: ElevatedButton.styleFrom(
                      primary: Colors.pinkAccent,
                      onPrimary: Colors.white,
                      ),
                      onPressed: _knownApp
                    ),
                  ),
                Text(""),
                SizedBox(
                  width: 300,
                  height: 100,
                  child:ElevatedButton(
                      child: Text('初心者向け筋トレ',
                        style: TextStyle(
                          fontSize: 30,
                        ),
                      ),
                      style: ElevatedButton.styleFrom(
                        primary: Colors.lightBlueAccent,
                        onPrimary: Colors.white,
                      ),
                      onPressed: _beginerApp
                      ),
                  ),
                Text(""),
                SizedBox(
                  width: 300,
                  height: 100,
                  child:ElevatedButton(
                      child: Text('上級者向け筋トレ',
                        style: TextStyle(
                          fontSize: 30,
                        ),
                      ),
                      style: ElevatedButton.styleFrom(
                        primary: Colors.lightGreen,
                        onPrimary: Colors.white,
                      ),
                      onPressed: _expertApp
                  ),
                ),
                Text(""),
                SizedBox(
                  width: 300,
                  height: 100,
                  child:ElevatedButton(
                      child: Text('食事方法',
                        style: TextStyle(
                          fontSize: 40,
                        ),
                      ),
                      style: ElevatedButton.styleFrom(
                        primary: Colors.orange,
                        onPrimary: Colors.white,
                      ),
                      onPressed: _cookApp
                  ),
                ),
              ])));
  }
}


_knownApp() async {
  const url = 'https://yuchrszk.blogspot.com/';
  await launch(url);
}
_beginerApp() async {
  const url = 'https://smartlog.jp/145280/';
  await launch(url);
}
_expertApp() async {
  const url = 'https://strongod.com/convict-conditioning/';
  await launch(url);
}
_cookApp() async {
  const url = 'https://ep.uha-mikakuto.co.jp/article/work-out-meal-menu-example/';
  await launch(url);
}