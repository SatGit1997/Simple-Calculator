
import 'package:flutter/material.dart';

class MyHomePage extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    return _HomePageState();
  }
}


class _HomePageState extends State<MyHomePage>{

  int _count =0;

  void incrementCount(){
    setState(() {
      _count++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(child: Text('Home')),
        backgroundColor: Colors.grey,
        foregroundColor: Colors.white,

      ),
      body:
      Center(
        child: Text('$_count', style: TextStyle(fontSize: 25),),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: incrementCount,
        child: Icon(Icons.add),
      )
    );
  }
}