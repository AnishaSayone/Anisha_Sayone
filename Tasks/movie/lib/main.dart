import 'package:flutter/material.dart';
import 'package:movie/ui/movies.dart';
import 'package:movie/navdrawer.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  final Widget child;

  MyApp({Key key, this.child}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: MyHomePage(),
      // routes: <String,WidgetBuilder>{
      //   '/movie':(BuildContext context)=>new MovieList(),
      //   '/tv':(BuildContext context)=>new TvList()
      // },
    );
  }
}

class MyHomePage extends StatefulWidget {
  final Widget child;

  MyHomePage({Key key, this.child}) : super(key: key);

  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF455A64),
      body: Container(
        child: TvList(),
      ),
    );
  }
}
