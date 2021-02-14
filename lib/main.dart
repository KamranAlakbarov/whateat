import 'package:flutter/material.dart';
import 'dart:math';

void main() {
  runApp(MyProg());
}

class MyProg extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.grey[400],
        appBar: AppBar(
          backgroundColor: Colors.black,
          centerTitle: true,
          title: Text(
            'What Eat?',
            style: TextStyle(color: Colors.white),
          ),
        ),
        body: FoodPage(),
      ),
    );
  }
}

class FoodPage extends StatefulWidget {
  @override
  _FoodPageState createState() => _FoodPageState();
}

class _FoodPageState extends State<FoodPage> {
  int corbaNo = 1;
  int yemekNo = 1;
  int tatliNo = 1;

  List<String> corbaNames = [
    'Merci',
    'Tarhana',
    'Toyuq Supu',
    'Duyu Supu',
    'Yogurtlu Corba'
  ];

  List<String> yemekNames = [
    'Karnıyarık',
    'Mantı',
    'Kuru Fasulye',
    'İçli Köfte',
    'Izgara Balık'
  ];

  List<String> tatliNames = [
    'Kadayıf',
    'Baklava',
    'Sütlaç',
    'Kazandibi',
    'Dondurma'
  ];
  void foodUpdate() {
    setState(() {
      corbaNo = Random().nextInt(5) + 1;
      yemekNo = Random().nextInt(5) + 1;
      tatliNo = Random().nextInt(5) + 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: <Widget>[
          Expanded(
            child: Padding(
                padding: const EdgeInsets.all(12.0),
                child: FlatButton(
                  highlightColor: Colors.white,
                  splashColor: Colors.white,
                  onPressed: foodUpdate,
                  child: Image.asset('assets/corba_$corbaNo.jpg'),
                )),
          ),
          Text(
            corbaNames[corbaNo - 1],
            style: TextStyle(fontSize: 20.0),
          ),
          Container(
            width: 200,
            child: Divider(
              height: 5,
              color: Colors.black,
            ),
          ),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(12.0),
              child: FlatButton(
                highlightColor: Colors.white,
                splashColor: Colors.white,
                onPressed: foodUpdate,
                child: Image.asset('assets/yemek_$yemekNo.jpg'),
              ),
            ),
          ),
          Text(
            yemekNames[yemekNo - 1],
            style: TextStyle(fontSize: 20.0),
          ),
          Container(
            width: 200,
            child: Divider(
              height: 5,
              color: Colors.black,
            ),
          ),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(12),
              child: FlatButton(
                highlightColor: Colors.white,
                splashColor: Colors.white,
                onPressed: foodUpdate,
                child: Image.asset('assets/tatli_$tatliNo.jpg'),
              ),
            ),
          ),
          Text(
            tatliNames[tatliNo - 1],
            style: TextStyle(fontSize: 20.0),
          ),
          Container(
            width: 200,
            child: Divider(
              height: 5,
              color: Colors.black,
            ),
          ),
        ],
      ),
    );
  }
}
