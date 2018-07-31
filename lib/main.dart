import 'package:flutter/material.dart';
import 'Category.dart';

void main() => runApp(new MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {

    // icone usado para teste.
    IconData icon = new IconData(0xeb3b, fontFamily: 'MaterialIcons');

    //IconData icon = new  IconData(0xeb41, fontFamily: 'MaterialIcons');

    return new MaterialApp(
        title: 'Custom Widget',
        debugShowCheckedModeBanner: false,
        theme: new ThemeData(

          primarySwatch: Colors.deepPurple,
        ),
        home: Scaffold(
          backgroundColor: Colors.blue,
          body: Center(
              child: Padding(
                  padding: new EdgeInsets.all(8.0),
                  child: Category(
                      texto: "Custom Widget", icone: icon, cor: Colors.yellow))),
        ));
  }
}
