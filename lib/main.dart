import 'package:flutter/material.dart';
import 'package:task3/screens/main_screen.dart';
import 'package:task3/screens/flipped_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "flutter task 1",
      theme: ThemeData.light(),
      home: HomeScreen(),
    );
  }
}

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  bool pluto = true;
  bool earth = false;
  bool mars = false;

  @override
  Widget build(BuildContext context) {
    final orientation = MediaQuery.of(context).orientation;

    return Scaffold(
        appBar: AppBar(centerTitle: true,
          title: Text("task3"),),
      body: LayoutBuilder(builder: (context, constraints) {
        if ( Orientation.landscape == orientation) {
          return  FlippedScreen(
              );
        } else if (constraints.maxWidth < 1100) {
          return MainScreen();
        } else {
          return FlippedScreen();
        }
      },),
    );
  }
}
