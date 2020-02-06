import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HeartScreen extends StatefulWidget {
  @override
  _HeartScreenState createState() => _HeartScreenState();
}

class _HeartScreenState extends State<HeartScreen> {
  bool isPressed = false;
  static List<Color> _fill = <Color>[
    Colors.grey[200],
    Color(0xFFf8fbf8),
    Colors.white
  ];

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Color(0xFFf8fbf8),
        body: Center(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[

              GestureDetector(
                onTap: () {
                  _change();
                },
                child: AnimatedContainer(
                  width: MediaQuery.of(context).size.width/4  ,
                  height: MediaQuery.of(context).size.height/8,
                  duration: Duration(seconds: 2),
                  child: isPressed
                      ? convex("Synth", Color(0xFF649166))
                      : concave("Beat"),
                ),
              ),
              SizedBox(width: 30.0,),
              GestureDetector(
                onTap: () {
                  _change();
                },
                child: AnimatedContainer(
                  width: MediaQuery.of(context).size.width / 4,
                  height: MediaQuery.of(context).size.height / 8,
                  duration: Duration(seconds: 2),
                  child: isPressed
                      ? convexWithThumb("Synth", Color(0xFF649166))
                      : concaveWithThumb("Beat"),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  void _change() {
    if (this.isPressed == true) {
      setState(() {
        isPressed = false;
      });
    } else if (this.isPressed == false) {
      setState(() {
        isPressed = true;
      });
    }
  }

  Widget concave(String txt) {
    return Container(
      width: MediaQuery.of(context).size.width / 4,
      height: MediaQuery.of(context).size.height / 8,
      child: Center(
          child:Icon(
              Icons.favorite_border
          )),
      decoration: BoxDecoration(
          color: Color(0xFFf8fbf8),
          borderRadius: BorderRadius.all(Radius.circular(30)),
          boxShadow: [
            BoxShadow(
                color: Colors.grey[200],
                offset: Offset(10.0, 10.0),
                blurRadius: 10.0,
                spreadRadius: 2.0),
            BoxShadow(
                color: Colors.white,
                offset: Offset(-10.0, -10.0),
                blurRadius: 10.0,
                spreadRadius: 2.0)
          ]),
    );
  }

  Widget convex(String txt, Color _clr) {
    return Container(
      width: MediaQuery.of(context).size.width / 4,
      height: MediaQuery.of(context).size.height / 8,
      child: Center(
          child: Icon(
              Icons.favorite,
              color: Colors.red,
          ),),
      decoration: BoxDecoration(
        color: _clr,
          //  border: Border.fromBorderSide(BorderSide(style: BorderStyle.solid,width: 3.0,color: Color(0xFFF8F1F1))),
        borderRadius: BorderRadius.all(Radius.circular(30)),
        gradient: LinearGradient(
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
          colors: _fill,
          stops: [0.1, 0.5, 0.9],
        ),
      ),
    );
  }
  Widget concaveWithThumb(String txt) {
    return Container(
      width: MediaQuery.of(context).size.width / 4,
      height: MediaQuery.of(context).size.height / 8,
      child: Center(
          child:Icon(
              Icons.thumb_up
          )),
      decoration: BoxDecoration(
          color: Color(0xFFf8fbf8),
          borderRadius: BorderRadius.all(Radius.circular(30)),
          boxShadow: [
            BoxShadow(
                color: Colors.grey[200],
                offset: Offset(10.0, 10.0),
                blurRadius: 10.0,
                spreadRadius: 2.0),
            BoxShadow(
                color: Colors.white,
                offset: Offset(-10.0, -10.0),
                blurRadius: 10.0,
                spreadRadius: 2.0)
          ]),
    );
  }

  Widget convexWithThumb(String txt, Color _clr) {
    return Container(
      width: MediaQuery.of(context).size.width / 4,
      height: MediaQuery.of(context).size.height / 8,
      child: Center(
        child: Icon(
          Icons.thumb_up,
          color: Colors.blueAccent,
        ),),
      decoration: BoxDecoration(
        color: _clr,
        //  border: Border.fromBorderSide(BorderSide(style: BorderStyle.solid,width: 3.0,color: Color(0xFFF8F1F1))),
        borderRadius: BorderRadius.all(Radius.circular(30)),
        gradient: LinearGradient(
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
          colors: _fill,
          stops: [0.1, 0.5, 0.9],
        ),
      ),
    );
  }
}
