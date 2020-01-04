import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
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
      home: TextFieldScreen()
    );
  }
}

class TextFieldScreen extends StatefulWidget {
  @override
  _TextFieldScreenState createState() => _TextFieldScreenState();
}

class _TextFieldScreenState extends State<TextFieldScreen> {
  final _controller = TextEditingController();
  String name = '';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Text("Your name is ${name}"),
          Container(
            child: TextField(
              controller: _controller,
            ),
            padding: EdgeInsets.all(20),
          ),

          Container(
            width: double.infinity,
            height: 75,
            child: FlatButton(
              child: Text("Click", style: TextStyle(color: Colors.white),),
              color: Colors.redAccent,
              onPressed: () {
                setState(() {
                  name = _controller.text;
                });
              },
            ),
            padding: EdgeInsets.all(20),
          )
        ],
      ),
    );
  }
}


