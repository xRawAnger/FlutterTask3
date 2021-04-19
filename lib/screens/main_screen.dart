import 'package:flutter/material.dart';

class MainScreen extends StatefulWidget {
  @override
  _MainScreenState createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  bool pluto = true;
  bool earth = false;
  bool mars = false;

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Scaffold(
        body: SingleChildScrollView(
          child: Center(child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(pluto ?"This is pluto": "",
                style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
              ),
              SizedBox(height: 20,),
              Image.network(pluto ?'https://upload.wikimedia.org/wikipedia/commons/e/ef/Pluto_in_True_Color_-_High-Res.jpg' : ""),


              Text(earth ? "this is earth": "",
                style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),),
              SizedBox(height: 20,),
              Image.network(earth ? "https://media.npr.org/assets/img/2013/03/06/bluemarble3k-smaller-nasa_custom-644f0b7082d6d0f6814a9e82908569c07ea55ccb-s800-c85.jpg" : ""),


              Text(mars ? "this is mars" : "",
                style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),),
              SizedBox(height: 20,),
              Image.network(mars ? "https://mars.nasa.gov/system/content_pages/main_images/418_marsglobe.jpg" : "")


            ],
          ),

          ),
        ),
        floatingActionButtonLocation:
        FloatingActionButtonLocation.centerDocked,
        floatingActionButton: Container(
          padding: EdgeInsets.symmetric(vertical: 0,horizontal: 10.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
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
          ),
        ),
      ),

    );
  }
}