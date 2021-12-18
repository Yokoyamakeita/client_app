import 'package:firstapp/content_page2.dart';
import 'package:firstapp/content_page3.dart';
import 'package:firstapp/content_page4.dart';
import 'package:firstapp/content_page5.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
class ContentPage1 extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('MENU画面'),
      ),
        body: Center(
          child:Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
            SizedBox(
              width: 300,
              height: 100,
              child:ElevatedButton(
                child: Text('画像登録',
                  style: TextStyle(
                    fontSize: 40,
                  ),
                ),
                style: ElevatedButton.styleFrom(
                      primary: Colors.pinkAccent,
                      onPrimary: Colors.white,
                ),
                onPressed: (){
                  Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => ContentPage2(),
                  ),
                  );
                }
                ),
              ),
              Text(""),
              SizedBox(
                width: 300,
                height: 100,
                child:ElevatedButton(
                    child: Text('情報確認',
                      style: TextStyle(
                        fontSize: 40,
                      ),
                    ),
                    style: ElevatedButton.styleFrom(
                      primary: Colors.lightBlueAccent,
                      onPrimary: Colors.white,
                    ),
                    onPressed: (){
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => ContentPage3(),
                        ),
                      );
                    }
                ),
              ),
              Text(""),
              SizedBox(
                width: 300,
                height: 100,
                child:ElevatedButton(
                    child: Text('情報詳細確認',
                      style: TextStyle(
                        fontSize: 40,
                      ),
                    ),
                    style: ElevatedButton.styleFrom(
                      primary: Colors.lightGreen,
                      onPrimary: Colors.white,
                    ),
                    onPressed: (){
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => ContentPage4(),
                        ),
                      );
                    }
                ),
              ),
              Text(""),
              SizedBox(
                width: 300,
                height: 100,
                child:ElevatedButton(
                    child: Text('お得情報',
                      style: TextStyle(
                        fontSize: 40,
                      ),
                    ),
                    style: ElevatedButton.styleFrom(
                      primary: Colors.orange,
                      onPrimary: Colors.white,
                    ),
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => ContentPage5(),
                        ),
                      );
                    }
                ),
              ),




            ])));
  }
}
