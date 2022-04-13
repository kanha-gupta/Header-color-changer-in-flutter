import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'dart:convert';

void main () => runApp(
    MaterialApp(
      title: "Colour changing app",
      home: Home3() ,
    )
);

class Home3 extends StatefulWidget {
  @override
  _Home3State createState() => _Home3State();
}

class _Home3State extends State<Home3> {
  final Map<String, Color> colors={
    'voilet' : Colors.purple,
    'indigo' : Colors.indigo,
    'blue' : Colors.blue,
    'green' : Colors.green,
    'yellow' : Colors.yellow,
    'orange' : Colors.orange,
    'red' : Colors.red,
    'black' : Colors.black,

  };


  void _setColor(String colorname,Color color) async{
    setState(() {
      selectedColor = color;

    });
  }
  Color? selectedColor;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Color changing app'),
        backgroundColor: selectedColor,

      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          for(var entry in colors.entries)
            Container(
              margin: EdgeInsets.all(10),
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  primary: entry.value,
                  minimumSize: Size(300,60),
                ),
                child: Text(" "),
                onPressed: () => _setColor(entry.key,entry.value),
              ),
            ),
        ],
      ),
    );
  }
}
