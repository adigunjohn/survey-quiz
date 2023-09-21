import 'package:flutter/material.dart';
import 'package:survey_quiz_app/eigth.dart';
import 'package:survey_quiz_app/fifth.dart';
import 'package:survey_quiz_app/fourth.dart';
import 'package:survey_quiz_app/homescreen.dart';
import 'package:survey_quiz_app/homescreen2.dart';
import 'package:survey_quiz_app/second.dart';
import 'package:survey_quiz_app/seventh.dart';
import 'package:survey_quiz_app/sixth.dart';
import 'package:survey_quiz_app/seventh2.dart';
import 'package:survey_quiz_app/third.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        useMaterial3: false,
        primarySwatch: Colors.blue,
      ),
      home: StartingPage(),
    );
  }
}

class StartingPage extends StatelessWidget {
  const StartingPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Renda UI Test'),
        centerTitle: true,
      ),
      body: SafeArea(
        child: Container(
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    CircleAvatar(
                      backgroundColor: Colors.blue,
                      radius: 23.0,
                      child: TextButton(
                        onPressed: () {
                          Navigator.push(context, MaterialPageRoute(builder: (_) => Home()));
                        },
                        child: Text(
                          '1.1',
                          style: TextStyle(color: Colors.white, fontSize: 20),
                        ),
                      ),
                    ),
                    CircleAvatar(
                      backgroundColor: Colors.purple,
                      radius: 23.0,
                      child: TextButton(
                        onPressed: () {
                          Navigator.push(context, MaterialPageRoute(builder: (_) => Home2()));
                        },
                        child: Text(
                          '1.2',
                          style: TextStyle(color: Colors.white, fontSize: 20),
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 20.0,
                ),
                CircleAvatar(
                  backgroundColor: Colors.pink,
                  radius: 20.0,
                  child: TextButton(
                    onPressed: () {
                      Navigator.push(context, MaterialPageRoute(builder: (_) => SecondHome()));
                    },
                    child: Text(
                      '2',
                      style: TextStyle(color: Colors.white, fontSize: 20),
                    ),
                  ),
                ),
                SizedBox(
                  height: 20.0,
                ),
                CircleAvatar(
                  backgroundColor: Colors.teal,
                  radius: 20.0,
                  child: TextButton(
                    onPressed: () {
                      Navigator.push(context, MaterialPageRoute(builder: (_) => ThirdHome()));
                    },
                    child: Text(
                      '3',
                      style: TextStyle(color: Colors.white, fontSize: 20),
                    ),
                  ),
                ),
                SizedBox(
                  height: 20.0,
                ),
                CircleAvatar(
                  backgroundColor: Colors.blue,
                  radius: 20.0,
                  child: TextButton(
                    onPressed: () {
                      Navigator.push(context, MaterialPageRoute(builder: (_) => FourthHome()));
                    },
                    child: Text(
                      '4',
                      style: TextStyle(color: Colors.white, fontSize: 20),
                    ),
                  ),
                ),
                SizedBox(
                  height: 20.0,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    CircleAvatar(
                      backgroundColor: Colors.orange,
                      radius: 20.0,
                      child: TextButton(
                        onPressed: () {
                          Navigator.push(context, MaterialPageRoute(builder: (_) => FifthHome()));
                        },
                        child: Text(
                          '5',
                          style: TextStyle(color: Colors.white, fontSize: 20),
                        ),
                      ),
                    ),
                    CircleAvatar(
                      backgroundColor: Colors.indigo,
                      radius: 20.0,
                      child: TextButton(
                        onPressed: () {
                          Navigator.push(context, MaterialPageRoute(builder: (_) => SixthHome()));
                        },
                        child: Text(
                          '6',
                          style: TextStyle(color: Colors.white, fontSize: 20),
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 20.0,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    CircleAvatar(
                      backgroundColor: Colors.green,
                      radius: 23.0,
                      child: TextButton(
                        onPressed: () {
                          Navigator.push(context, MaterialPageRoute(builder: (_) => SeventhHome()));
                        },
                        child: Text(
                          '7.1',
                          style: TextStyle(color: Colors.white, fontSize: 20),
                        ),
                      ),
                    ),
                    CircleAvatar(
                      backgroundColor: Colors.blue,
                      radius: 23.0,
                      child: TextButton(
                        onPressed: () {
                          Navigator.push(context, MaterialPageRoute(builder: (_) => Seventh2Home()));
                        },
                        child: Text(
                          '7.2',
                          style: TextStyle(color: Colors.white, fontSize: 20),
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 20.0,
                ),
                CircleAvatar(
                  backgroundColor: Colors.yellow,
                  radius: 20.0,
                  child: TextButton(
                    onPressed: () {
                      Navigator.push(context, MaterialPageRoute(builder: (_) => EigthHome()));
                    },
                    child: Text(
                      '8',
                      style: TextStyle(color: Colors.white, fontSize: 20),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
