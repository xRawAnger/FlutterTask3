import 'package:flutter/material.dart';

class FlippedScreen extends StatefulWidget {
  @override
  _FlippedScreenState createState() => _FlippedScreenState();
}

class _FlippedScreenState extends State<FlippedScreen> {
  bool pluto = true;
  bool earth = false;
  bool mars = false;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(child: Scaffold(
        body: SingleChildScrollView(child: Center(
          child: Column(
          children: <Widget>[
          Column(
          mainAxisAlignment:MainAxisAlignment.start,
          children: [

            Image.network(pluto ?'https://upload.wikimedia.org/wikipedia/commons/e/ef/Pluto_in_True_Color_-_High-Res.jpg' : ""),
            SizedBox(height: 20,),
            Text(pluto ?"This is pluto": "",
              style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
            ),




            Image.network(earth ? "https://media.npr.org/assets/img/2013/03/06/bluemarble3k-smaller-nasa_custom-644f0b7082d6d0f6814a9e82908569c07ea55ccb-s800-c85.jpg" : ""),
            SizedBox(height: 20,),
            Text(earth ? "this is earth": "",
              style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),),



            Image.network(mars ? "https://mars.nasa.gov/system/content_pages/main_images/418_marsglobe.jpg" : ""),
            SizedBox(height: 20,),
            Text(mars ? "this is mars" : "",
              style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),),

          ],
        ),

      ],

    ),

    ),),
    ),),
        Expanded(child: Scaffold(body: SingleChildScrollView(child: Center(child: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          children:<Widget> [
            FloatingActionButton(
              onPressed: (){
                setState(() {
                  pluto = true;
                  earth = false;
                  mars = false;
                });
              },
              child: Icon(Icons.arrow_forward),
            ),
            FloatingActionButton(
              onPressed: () {
                setState(() {
                  pluto = false;
                  earth = true;
                  mars = false;
                });
              },
              child: Icon(Icons.arrow_forward),
            ),
            FloatingActionButton(onPressed: (){
              setState(() {
                pluto = false;
                earth = false;
                mars = true;
              });
            },
              child: Icon(Icons.arrow_forward),)
          ],
        ),),),))
      ],
    );
  }
}
