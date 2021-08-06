import 'package:flutter/material.dart';
import 'package:percent_indicator/percent_indicator.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Sgela',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        leading: IconButton(
          color: Colors.black,
          onPressed: () {},
          icon: Icon(Icons.menu),
        ),
        actions: [
          IconButton(
            color: Colors.black,
            onPressed: () {},
            icon: Icon(Icons.search),
          ),
        ],
      ),
      body: ListView(
        children: [
          Container(
            decoration: BoxDecoration(color: Colors.white, boxShadow: [
              BoxShadow(
                color: Colors.grey.withOpacity(0.5),
                offset: Offset(0, 3),
                spreadRadius: 5,
                blurRadius: 7,
              ),
            ]),
            padding: EdgeInsets.all(10),
            margin: EdgeInsets.all(10),
            height: height / 2,
            width: width,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text('Boitshoko High School'),
                Text(
                  'Painting of school premises',
                  style: TextStyle(fontSize: 30),
                ),
                LinearPercentIndicator(
                  width: width / 1.2,
                  lineHeight: 14.0,
                  percent: 0.3,
                  backgroundColor: Colors.grey,
                  progressColor: Colors.blue,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
