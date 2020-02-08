import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:icon_shadow/icon_shadow.dart';

class RemoteController extends StatefulWidget {
  @override
  _RemoteControllerState createState() => _RemoteControllerState();
}

class _RemoteControllerState extends State<RemoteController> {
  bool powerButton = false;
  bool isPressed1 = false;
  bool isPressed2 = false;
  bool isPressed3 = false;
  bool isPressed4 = false;
  bool isPressed5 = false;
  bool isPressed6 = false;
  bool isPressed7 = false;
  bool isPressed8 = false;
  bool isPressed9 = false;
  bool isPressed10 = false;
  bool isPressed11 = false;
  bool isPressed12 = false;

  static List<Color> _fill = <Color>[
    Colors.grey[200],
    Color(0xFFf8fbf8),
    Colors.white
  ];

  @override
  Widget build(BuildContext context) {
    var h = MediaQuery.of(context).size.height;
    var w = MediaQuery.of(context).size.width;
    return SafeArea(
      child: ((h > 550) && (w > 500))
          ? Scaffold()
          : Scaffold(
              backgroundColor: Color(0xFFf8fbf8),
              body: Column(
                children: <Widget>[
                  Container(
                    color: Color(0xFFf8fbf8),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: <Widget>[
                        IconShadowWidget(
                          Icon(
                            Icons.keyboard_arrow_down,
                            color: Color(0xFFf8fbf8),
                            size: 40.0,
                          ),
                          shadowColor: Colors.grey[400],
                        ),
                        Text(
                          "LOOP",
                          style: TextStyle(
                              color: Colors.black54,
                              fontWeight: FontWeight.w900,
                              fontSize: 20.0),
                        ),
                        GestureDetector(
                          onTap: () {
                            if (this.powerButton == true) {
                              setState(() {
                                powerButton = false;
                              });
                            } else if (this.powerButton == false) {
                              setState(() {
                                powerButton = true;
                              });
                            }
                          },
                          child: Container(
                            margin: EdgeInsets.only(top: 10.0),
                            height: MediaQuery.of(context).size.height / 5,
                            width: MediaQuery.of(context).size.width / 6,
                            decoration: powerButton
                                ? BoxDecoration(
                                    color: Colors.pinkAccent,
//            border: Border.fromBorderSide(BorderSide(style: BorderStyle.solid,width: 3.0,color: Color(0xFFF4F2F2))),
                                    borderRadius:
                                        BorderRadius.all(Radius.circular(30)),
                                    gradient: LinearGradient(
                                      begin: Alignment.topLeft,
                                      end: Alignment.bottomRight,
                                      colors: _fill,
                                      stops: [0.1, 0.5, 0.9],
                                    ),
                                  )
                                : BoxDecoration(
                                    color: Color(0xFFf8fbf8),
                                    borderRadius:
                                        BorderRadius.all(Radius.circular(
                                      40.0,
                                    )),
                                    boxShadow: [
                                        BoxShadow(
                                            color: Colors.grey[200],
                                            offset: Offset(15.0, 15.0),
                                            blurRadius: 10.0,
                                            spreadRadius: 1.0),
                                        BoxShadow(
                                            color: Colors.white,
                                            offset: Offset(-10.0, -10.0),
                                            blurRadius: 15.0,
                                            spreadRadius: 1.0)
                                      ]),
                            child: Icon(Icons.power_settings_new,
                                color: powerButton
                                    ? Colors.tealAccent
                                    : Colors.redAccent),
                          ),
                        ),
                      ],
                    ),
                    width: MediaQuery.of(context).size.width,
                    height: MediaQuery.of(context).size.height / 11,
                  ),
                  SizedBox(
                    height: MediaQuery.of(context).size.height / 11,
                    width: MediaQuery.of(context).size.width,
                  ),
                  Column(
                    children: <Widget>[
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: <Widget>[
                          GestureDetector(
                            onTap: () {
                              if (this.isPressed1 == true) {
                                setState(() {
                                  isPressed1 = false;
                                });
                              } else if (this.isPressed1 == false) {
                                setState(() {
                                  isPressed1 = true;
                                });
                              }
                            },
                            child: AnimatedContainer(
                                width: MediaQuery.of(context).size.width / 4,
                                height: MediaQuery.of(context).size.height / 8,
                                duration: Duration(seconds: 2),
                                child: Container(
                                  width: MediaQuery.of(context).size.width / 4,
                                  height:
                                      MediaQuery.of(context).size.height / 8,
                                  child: Center(
                                      child: Text(
                                    "Beat",
                                    style: TextStyle(
                                        color: Colors.black12,
                                        fontSize: 15.0,
                                        fontWeight: FontWeight.w500),
                                  )),
                                  decoration: isPressed1
                                      ? BoxDecoration(
                                          color: Colors.pinkAccent,
//            border: Border.fromBorderSide(BorderSide(style: BorderStyle.solid,width: 3.0,color: Color(0xFFF4F2F2))),
                                          borderRadius: BorderRadius.all(
                                              Radius.circular(30)),
                                          gradient: LinearGradient(
                                            begin: Alignment.topLeft,
                                            end: Alignment.bottomRight,
                                            colors: _fill,
                                            stops: [0.1, 0.5, 0.9],
                                          ),
                                        )
                                      : BoxDecoration(
                                          color: Color(0xFFf8fbf8),
                                          borderRadius: BorderRadius.all(
                                              Radius.circular(30)),
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
                                )),
                          ),
                          GestureDetector(
                            onTap: () {
                              if (this.isPressed2 == true) {
                                setState(() {
                                  isPressed2 = false;
                                });
                              } else if (this.isPressed2 == false) {
                                setState(() {
                                  isPressed2 = true;
                                });
                              }
                            },
                            child: AnimatedContainer(
                                width: MediaQuery.of(context).size.width / 4,
                                height: MediaQuery.of(context).size.height / 8,
                                duration: Duration(seconds: 2),
                                child: Container(
                                  width: MediaQuery.of(context).size.width / 4,
                                  height:
                                      MediaQuery.of(context).size.height / 8,
                                  child: Center(
                                      child: Text(
                                    "Beat",
                                    style: TextStyle(
                                        color: Colors.black12,
                                        fontSize: 15.0,
                                        fontWeight: FontWeight.w500),
                                  )),
                                  decoration: isPressed2
                                      ? BoxDecoration(
                                          color: Colors.pinkAccent,
//            border: Border.fromBorderSide(BorderSide(style: BorderStyle.solid,width: 3.0,color: Color(0xFFF4F2F2))),
                                          borderRadius: BorderRadius.all(
                                              Radius.circular(30)),
                                          gradient: LinearGradient(
                                            begin: Alignment.topLeft,
                                            end: Alignment.bottomRight,
                                            colors: _fill,
                                            stops: [0.1, 0.5, 0.9],
                                          ),
                                        )
                                      : BoxDecoration(
                                          color: Color(0xFFf8fbf8),
                                          borderRadius: BorderRadius.all(
                                              Radius.circular(30)),
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
                                )),
                          ),
                          GestureDetector(
                            onTap: () {
                              if (this.isPressed3 == true) {
                                setState(() {
                                  isPressed3 = false;
                                });
                              } else if (this.isPressed3 == false) {
                                setState(() {
                                  isPressed3 = true;
                                });
                              }
                            },
                            child: AnimatedContainer(
                                width: MediaQuery.of(context).size.width / 4,
                                height: MediaQuery.of(context).size.height / 8,
                                duration: Duration(seconds: 2),
                                child: Container(
                                  width: MediaQuery.of(context).size.width / 4,
                                  height:
                                      MediaQuery.of(context).size.height / 8,
                                  child: Center(
                                      child: Text(
                                    "Beat",
                                    style: TextStyle(
                                        color: Colors.black12,
                                        fontSize: 15.0,
                                        fontWeight: FontWeight.w500),
                                  )),
                                  decoration: isPressed3
                                      ? BoxDecoration(
                                          color: Colors.pinkAccent,
//            border: Border.fromBorderSide(BorderSide(style: BorderStyle.solid,width: 3.0,color: Color(0xFFF4F2F2))),
                                          borderRadius: BorderRadius.all(
                                              Radius.circular(30)),
                                          gradient: LinearGradient(
                                            begin: Alignment.topLeft,
                                            end: Alignment.bottomRight,
                                            colors: _fill,
                                            stops: [0.1, 0.5, 0.9],
                                          ),
                                        )
                                      : BoxDecoration(
                                          color: Color(0xFFf8fbf8),
                                          borderRadius: BorderRadius.all(
                                              Radius.circular(30)),
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
                                )),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: MediaQuery.of(context).size.height / 18,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: <Widget>[
                          GestureDetector(
                            onTap: () {
                              if (this.isPressed4 == true) {
                                setState(() {
                                  isPressed4 = false;
                                });
                              } else if (this.isPressed4 == false) {
                                setState(() {
                                  isPressed4 = true;
                                });
                              }
                            },
                            child: AnimatedContainer(
                                width: MediaQuery.of(context).size.width / 4,
                                height: MediaQuery.of(context).size.height / 8,
                                duration: Duration(seconds: 2),
                                child: Container(
                                  width: MediaQuery.of(context).size.width / 4,
                                  height:
                                      MediaQuery.of(context).size.height / 8,
                                  child: Center(
                                      child: Text(
                                    "Beat",
                                    style: TextStyle(
                                        color: Colors.black12,
                                        fontSize: 15.0,
                                        fontWeight: FontWeight.w500),
                                  )),
                                  decoration: isPressed4
                                      ? BoxDecoration(
                                          color: Colors.pinkAccent,
//            border: Border.fromBorderSide(BorderSide(style: BorderStyle.solid,width: 3.0,color: Color(0xFFF4F2F2))),
                                          borderRadius: BorderRadius.all(
                                              Radius.circular(30)),
                                          gradient: LinearGradient(
                                            begin: Alignment.topLeft,
                                            end: Alignment.bottomRight,
                                            colors: _fill,
                                            stops: [0.1, 0.5, 0.9],
                                          ),
                                        )
                                      : BoxDecoration(
                                          color: Color(0xFFf8fbf8),
                                          borderRadius: BorderRadius.all(
                                              Radius.circular(30)),
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
                                )),
                          ),
                          GestureDetector(
                            onTap: () {
                              if (this.isPressed5 == true) {
                                setState(() {
                                  isPressed5 = false;
                                });
                              } else if (this.isPressed5 == false) {
                                setState(() {
                                  isPressed5 = true;
                                });
                              }
                            },
                            child: AnimatedContainer(
                                width: MediaQuery.of(context).size.width / 4,
                                height: MediaQuery.of(context).size.height / 8,
                                duration: Duration(seconds: 2),
                                child: Container(
                                  width: MediaQuery.of(context).size.width / 4,
                                  height:
                                      MediaQuery.of(context).size.height / 8,
                                  child: Center(
                                      child: Text(
                                    "Beat",
                                    style: TextStyle(
                                        color: Colors.black12,
                                        fontSize: 15.0,
                                        fontWeight: FontWeight.w500),
                                  )),
                                  decoration: isPressed5
                                      ? BoxDecoration(
                                          color: Colors.pinkAccent,
//            border: Border.fromBorderSide(BorderSide(style: BorderStyle.solid,width: 3.0,color: Color(0xFFF4F2F2))),
                                          borderRadius: BorderRadius.all(
                                              Radius.circular(30)),
                                          gradient: LinearGradient(
                                            begin: Alignment.topLeft,
                                            end: Alignment.bottomRight,
                                            colors: _fill,
                                            stops: [0.1, 0.5, 0.9],
                                          ),
                                        )
                                      : BoxDecoration(
                                          color: Color(0xFFf8fbf8),
                                          borderRadius: BorderRadius.all(
                                              Radius.circular(30)),
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
                                )),
                          ),
                          GestureDetector(
                            onTap: () {
                              if (this.isPressed6 == true) {
                                setState(() {
                                  isPressed6 = false;
                                });
                              } else if (this.isPressed6 == false) {
                                setState(() {
                                  isPressed6 = true;
                                });
                              }
                            },
                            child: AnimatedContainer(
                                width: MediaQuery.of(context).size.width / 4,
                                height: MediaQuery.of(context).size.height / 8,
                                duration: Duration(seconds: 2),
                                child: Container(
                                  width: MediaQuery.of(context).size.width / 4,
                                  height:
                                      MediaQuery.of(context).size.height / 8,
                                  child: Center(
                                      child: Text(
                                    "Beat",
                                    style: TextStyle(
                                        color: Colors.black12,
                                        fontSize: 15.0,
                                        fontWeight: FontWeight.w500),
                                  )),
                                  decoration: isPressed6
                                      ? BoxDecoration(
                                          color: Colors.pinkAccent,
//            border: Border.fromBorderSide(BorderSide(style: BorderStyle.solid,width: 3.0,color: Color(0xFFF4F2F2))),
                                          borderRadius: BorderRadius.all(
                                              Radius.circular(30)),
                                          gradient: LinearGradient(
                                            begin: Alignment.topLeft,
                                            end: Alignment.bottomRight,
                                            colors: _fill,
                                            stops: [0.1, 0.5, 0.9],
                                          ),
                                        )
                                      : BoxDecoration(
                                          color: Color(0xFFf8fbf8),
                                          borderRadius: BorderRadius.all(
                                              Radius.circular(30)),
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
                                )),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: MediaQuery.of(context).size.height / 18,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: <Widget>[
                          GestureDetector(
                            onTap: () {
                              if (this.isPressed7 == true) {
                                setState(() {
                                  isPressed7 = false;
                                });
                              } else if (this.isPressed7 == false) {
                                setState(() {
                                  isPressed7 = true;
                                });
                              }
                            },
                            child: AnimatedContainer(
                                width: MediaQuery.of(context).size.width / 4,
                                height: MediaQuery.of(context).size.height / 8,
                                duration: Duration(seconds: 2),
                                child: Container(
                                  width: MediaQuery.of(context).size.width / 4,
                                  height:
                                      MediaQuery.of(context).size.height / 8,
                                  child: Center(
                                      child: Text(
                                    "Beat",
                                    style: TextStyle(
                                        color: Colors.black12,
                                        fontSize: 15.0,
                                        fontWeight: FontWeight.w500),
                                  )),
                                  decoration: isPressed7
                                      ? BoxDecoration(
                                          color: Colors.pinkAccent,
//            border: Border.fromBorderSide(BorderSide(style: BorderStyle.solid,width: 3.0,color: Color(0xFFF4F2F2))),
                                          borderRadius: BorderRadius.all(
                                              Radius.circular(30)),
                                          gradient: LinearGradient(
                                            begin: Alignment.topLeft,
                                            end: Alignment.bottomRight,
                                            colors: _fill,
                                            stops: [0.1, 0.5, 0.9],
                                          ),
                                        )
                                      : BoxDecoration(
                                          color: Color(0xFFf8fbf8),
                                          borderRadius: BorderRadius.all(
                                              Radius.circular(30)),
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
                                )),
                          ),
                          GestureDetector(
                            onTap: () {
                              if (this.isPressed8 == true) {
                                setState(() {
                                  isPressed8 = false;
                                });
                              } else if (this.isPressed8 == false) {
                                setState(() {
                                  isPressed8 = true;
                                });
                              }
                            },
                            child: AnimatedContainer(
                                width: MediaQuery.of(context).size.width / 4,
                                height: MediaQuery.of(context).size.height / 8,
                                duration: Duration(seconds: 2),
                                child: Container(
                                  width: MediaQuery.of(context).size.width / 4,
                                  height:
                                      MediaQuery.of(context).size.height / 8,
                                  child: Center(
                                      child: Text(
                                    "Beat",
                                    style: TextStyle(
                                        color: Colors.black12,
                                        fontSize: 15.0,
                                        fontWeight: FontWeight.w500),
                                  )),
                                  decoration: isPressed8
                                      ? BoxDecoration(
                                          color: Colors.pinkAccent,
//            border: Border.fromBorderSide(BorderSide(style: BorderStyle.solid,width: 3.0,color: Color(0xFFF4F2F2))),
                                          borderRadius: BorderRadius.all(
                                              Radius.circular(30)),
                                          gradient: LinearGradient(
                                            begin: Alignment.topLeft,
                                            end: Alignment.bottomRight,
                                            colors: _fill,
                                            stops: [0.1, 0.5, 0.9],
                                          ),
                                        )
                                      : BoxDecoration(
                                          color: Color(0xFFf8fbf8),
                                          borderRadius: BorderRadius.all(
                                              Radius.circular(30)),
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
                                )),
                          ),
                          GestureDetector(
                            onTap: () {
                              if (this.isPressed9 == true) {
                                setState(() {
                                  isPressed9 = false;
                                });
                              } else if (this.isPressed9 == false) {
                                setState(() {
                                  isPressed9 = true;
                                });
                              }
                            },
                            child: AnimatedContainer(
                                width: MediaQuery.of(context).size.width / 4,
                                height: MediaQuery.of(context).size.height / 8,
                                duration: Duration(seconds: 2),
                                child: Container(
                                  width: MediaQuery.of(context).size.width / 4,
                                  height:
                                      MediaQuery.of(context).size.height / 8,
                                  child: Center(
                                      child: Text(
                                    "Beat",
                                    style: TextStyle(
                                        color: Colors.black12,
                                        fontSize: 15.0,
                                        fontWeight: FontWeight.w500),
                                  )),
                                  decoration: isPressed9
                                      ? BoxDecoration(
                                          color: Colors.pinkAccent,
//            border: Border.fromBorderSide(BorderSide(style: BorderStyle.solid,width: 3.0,color: Color(0xFFF4F2F2))),
                                          borderRadius: BorderRadius.all(
                                              Radius.circular(30)),
                                          gradient: LinearGradient(
                                            begin: Alignment.topLeft,
                                            end: Alignment.bottomRight,
                                            colors: _fill,
                                            stops: [0.1, 0.5, 0.9],
                                          ),
                                        )
                                      : BoxDecoration(
                                          color: Color(0xFFf8fbf8),
                                          borderRadius: BorderRadius.all(
                                              Radius.circular(30)),
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
                                )),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: MediaQuery.of(context).size.height / 18,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: <Widget>[
                          GestureDetector(
                            onTap: () {
                              if (this.isPressed10 == true) {
                                setState(() {
                                  isPressed10 = false;
                                });
                              } else if (this.isPressed10 == false) {
                                setState(() {
                                  isPressed10 = true;
                                });
                              }
                            },
                            child: AnimatedContainer(
                                width: MediaQuery.of(context).size.width / 4,
                                height: MediaQuery.of(context).size.height / 8,
                                duration: Duration(seconds: 2),
                                child: Container(
                                  width: MediaQuery.of(context).size.width / 4,
                                  height:
                                      MediaQuery.of(context).size.height / 8,
                                  child: Center(
                                      child: Text(
                                    "Beat",
                                    style: TextStyle(
                                        color: Colors.black12,
                                        fontSize: 15.0,
                                        fontWeight: FontWeight.w500),
                                  )),
                                  decoration: isPressed10
                                      ? BoxDecoration(
                                          color: Colors.pinkAccent,
//            border: Border.fromBorderSide(BorderSide(style: BorderStyle.solid,width: 3.0,color: Color(0xFFF4F2F2))),
                                          borderRadius: BorderRadius.all(
                                              Radius.circular(30)),
                                          gradient: LinearGradient(
                                            begin: Alignment.topLeft,
                                            end: Alignment.bottomRight,
                                            colors: _fill,
                                            stops: [0.1, 0.5, 0.9],
                                          ),
                                        )
                                      : BoxDecoration(
                                          color: Color(0xFFf8fbf8),
                                          borderRadius: BorderRadius.all(
                                              Radius.circular(30)),
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
                                )),
                          ),
                          GestureDetector(
                            onTap: () {
                              if (this.isPressed11 == true) {
                                setState(() {
                                  isPressed11 = false;
                                });
                              } else if (this.isPressed11 == false) {
                                setState(() {
                                  isPressed11 = true;
                                });
                              }
                            },
                            child: AnimatedContainer(
                                width: MediaQuery.of(context).size.width / 4,
                                height: MediaQuery.of(context).size.height / 8,
                                duration: Duration(seconds: 2),
                                child: Container(
                                  width: MediaQuery.of(context).size.width / 4,
                                  height:
                                      MediaQuery.of(context).size.height / 8,
                                  child: Center(
                                      child: Text(
                                    "Beat",
                                    style: TextStyle(
                                        color: Colors.black12,
                                        fontSize: 15.0,
                                        fontWeight: FontWeight.w500),
                                  )),
                                  decoration: isPressed11
                                      ? BoxDecoration(
                                          color: Colors.pinkAccent,
//            border: Border.fromBorderSide(BorderSide(style: BorderStyle.solid,width: 3.0,color: Color(0xFFF4F2F2))),
                                          borderRadius: BorderRadius.all(
                                              Radius.circular(30)),
                                          gradient: LinearGradient(
                                            begin: Alignment.topLeft,
                                            end: Alignment.bottomRight,
                                            colors: _fill,
                                            stops: [0.1, 0.5, 0.9],
                                          ),
                                        )
                                      : BoxDecoration(
                                          color: Color(0xFFf8fbf8),
                                          borderRadius: BorderRadius.all(
                                              Radius.circular(30)),
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
                                )),
                          ),
                          GestureDetector(
                            onTap: () {
                              if (this.isPressed12 == true) {
                                setState(() {
                                  isPressed12 = false;
                                });
                              } else if (this.isPressed12 == false) {
                                setState(() {
                                  isPressed12 = true;
                                });
                              }
                            },
                            child: AnimatedContainer(
                                width: MediaQuery.of(context).size.width / 4,
                                height: MediaQuery.of(context).size.height / 8,
                                duration: Duration(seconds: 2),
                                child: Container(
                                  width: MediaQuery.of(context).size.width / 4,
                                  height:
                                      MediaQuery.of(context).size.height / 8,
                                  child: Center(
                                      child: Text(
                                    "Beat",
                                    style: TextStyle(
                                        color: Colors.black12,
                                        fontSize: 15.0,
                                        fontWeight: FontWeight.w500),
                                  )),
                                  decoration: isPressed12
                                      ? BoxDecoration(
                                          color: Colors.pinkAccent,
//            border: Border.fromBorderSide(BorderSide(style: BorderStyle.solid,width: 3.0,color: Color(0xFFF4F2F2))),
                                          borderRadius: BorderRadius.all(
                                              Radius.circular(30)),
                                          gradient: LinearGradient(
                                            begin: Alignment.topLeft,
                                            end: Alignment.bottomRight,
                                            colors: _fill,
                                            stops: [0.1, 0.5, 0.9],
                                          ),
                                        )
                                      : BoxDecoration(
                                          color: Color(0xFFf8fbf8),
                                          borderRadius: BorderRadius.all(
                                              Radius.circular(30)),
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
                                )),
                          ),
                        ],
                      ),
                    ],
                  ),
                ],
              )),
    );
  }

//  Widget concave(String txt) {
//    return Container(
//      width: MediaQuery.of(context).size.width / 4,
//      height: MediaQuery.of(context).size.height / 8,
//      child: Center(
//          child: Text(
//        "$txt",
//        style: TextStyle(
//            color: Colors.black12, fontSize: 15.0, fontWeight: FontWeight.w500),
//      )),
//      decoration: isPressed
//          ? BoxDecoration(
//              color: Colors.pinkAccent,
////            border: Border.fromBorderSide(BorderSide(style: BorderStyle.solid,width: 3.0,color: Color(0xFFF4F2F2))),
//              borderRadius: BorderRadius.all(Radius.circular(30)),
//              gradient: LinearGradient(
//                begin: Alignment.topLeft,
//                end: Alignment.bottomRight,
//                colors: _fill,
//                stops: [0.1, 0.5, 0.9],
//              ),
//            )
//          : BoxDecoration(
//              color: Color(0xFFf8fbf8),
//              borderRadius: BorderRadius.all(Radius.circular(30)),
//              boxShadow: [
//                  BoxShadow(
//                      color: Colors.grey[200],
//                      offset: Offset(10.0, 10.0),
//                      blurRadius: 10.0,
//                      spreadRadius: 2.0),
//                  BoxShadow(
//                      color: Colors.white,
//                      offset: Offset(-10.0, -10.0),
//                      blurRadius: 10.0,
//                      spreadRadius: 2.0)
//                ]),
//    );
//  }

//  Widget convex(String txt, Color _clr) {
//    return Container(
//      width: MediaQuery.of(context).size.width / 4,
//      height: MediaQuery.of(context).size.height / 8,
//      child: Center(
//          child: Text(
//        "$txt",
//        style: TextStyle(
//            color: Color(0xFFECCEE3),
//            fontSize: 15.0,
//            fontWeight: FontWeight.w500),
//      )),
//      decoration: BoxDecoration(
//        color: _clr,
////            border: Border.fromBorderSide(BorderSide(style: BorderStyle.solid,width: 3.0,color: Color(0xFFF4F2F2))),
//        borderRadius: BorderRadius.all(Radius.circular(30)),
//        gradient: LinearGradient(
//          begin: Alignment.topLeft,
//          end: Alignment.bottomRight,
//          colors: _fill,
//          stops: [0.1, 0.5, 0.9],
//        ),
//      ),
//    );
//  }

//  void _change() {
//    if (this.isPressed1 == true) {
//      setState(() {
//        isPressed1 = false;
//      });
//    } else if (this.isPressed1 == false) {
//      setState(() {
//        isPressed1 = true;
//      });
//    }
//  }

}
