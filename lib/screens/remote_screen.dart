import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:icon_shadow/icon_shadow.dart';

class RemoteController extends StatefulWidget {
  @override
  _RemoteControllerState createState() => _RemoteControllerState();
}

class _RemoteControllerState extends State<RemoteController> {
  bool isPressed =false;

  static List<Color> _fill = <Color>[

    Colors.grey[300],
    Color(0xFFf8fbf8),
    Colors.white
    ];
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Color(0xFFf8fbf8),
        body: Column(
            children: <Widget>[
                Container(
                    color: Color(0xFFf8fbf8),
                    child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: <Widget>[

                          IconShadowWidget(Icon(Icons.keyboard_arrow_down,color:Color(0xFFf8fbf8),size: 40.0,),shadowColor:Colors.grey[400] ,),
                          Text("LOOP",style: TextStyle(color: Colors.black38,fontWeight: FontWeight.w900,fontSize: 20.0),),
                          GestureDetector(
                            onTap: (){
                                setState(() {
                                  isPressed=true;


                                });
                            },
                            child: Container(
                              margin: EdgeInsets.only(top:10.0),
                              height: MediaQuery.of(context).size.height/5,
                              width: MediaQuery.of(context).size.width/6,
                              decoration: BoxDecoration(
                                color: Color(0xFFf8fbf8),

                                  borderRadius: BorderRadius.all(Radius.circular(40.0,)),
                                  boxShadow:isPressed?  null: [
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
                                  ]
                              ),
                              child: Icon(Icons.power_settings_new,color:Colors.black38),
                            ),
                          ),



                        ],
                    ),
                    width: MediaQuery.of(context).size.width,
                    height: MediaQuery.of(context).size.height/11,
                ),
              SizedBox(
                height:  MediaQuery.of(context).size.height/11,
                width: MediaQuery.of(context).size.width,
              ),
              Column(

                children: <Widget>[
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: <Widget>[
                        concave("Beat"),concave("Synth"),concave("Synth")
                      ],
                  ),
                  SizedBox(height: MediaQuery.of(context).size.height/18,),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: <Widget>[
                      concave("Beat"),convex("Synth",Color(0xFF649166)),concave("Beat")
                    ],
                  ),
                  SizedBox(height: MediaQuery.of(context).size.height/18,),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: <Widget>[
                      concave("Beat"),concave("Bass"),convex("Fx",Color(0xFFA9D5AB)),
                    ],
                  ),
                  SizedBox(height: MediaQuery.of(context).size.height/18,),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: <Widget>[
                      convex("Beat",Color(0xff649166)),
                      convex("Beat",Color(0xFF649166)),
                      concave("Beat")

                    ],
                  ),
                ],
              ),

            ],
        )
      ),
    );
  }
  Widget concave(String txt) {
    return Container(
      width: MediaQuery.of(context).size.width /4,
      height: MediaQuery.of(context).size.height / 8,
      child: Center(
          child: Text(
            "$txt",
            style: TextStyle(color: Colors.black12,fontSize: 15.0,fontWeight: FontWeight.w500),
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
  Widget convex(String txt,Color _clr){
      return Container(
      width: MediaQuery.of(context).size.width /4,
      height: MediaQuery.of(context).size.height / 8,
      child: Center(
          child: Text(
            "$txt",
            style: TextStyle(color:Color(0xFFECCEE3),fontSize: 15.0,fontWeight: FontWeight.w500),
          )),
      decoration: BoxDecoration(
          color: _clr,
//            border: Border.fromBorderSide(BorderSide(style: BorderStyle.solid,width: 3.0,color: Color(0xFFF4F2F2))),
          borderRadius: BorderRadius.all(Radius.circular(30)),
          gradient: LinearGradient(
            begin: Alignment.topLeft,
            end:Alignment.bottomRight,
            colors: _fill,
            stops: [0.1,0.5,0.9],

          ),

      ),
        );
  }

  Widget button3(String txt){
      return Stack(
          children: <Widget>[
              Container(
                width: MediaQuery.of(context).size.width /3,
                height: MediaQuery.of(context).size.height / 6,
                decoration: BoxDecoration(

                    color: Color(0xFFf8fbf8),
                    borderRadius: BorderRadius.all(Radius.circular(30)),
                    boxShadow: [

                      BoxShadow(
                          color: Colors.grey[200],

                          blurRadius: 10.0,
                          )
                    ]
                ),
              ),
            Padding(
              padding: EdgeInsets.all(10.0),
              child: Center(
                child: Container(
                  width: MediaQuery.of(context).size.width /6,
                  height: MediaQuery.of(context).size.height / 10,
                  decoration: BoxDecoration(
                      color: Color(0xFFf8fbf8),

                      borderRadius: BorderRadius.all(Radius.circular(30)),
                      gradient: LinearGradient(
                          begin: Alignment.topLeft,
                          end:Alignment.bottomRight,
                          colors: _fill,
                          stops: [0.2,0.5,1],

                      ),
                    boxShadow: [
                       BoxShadow(
                           color: Colors.grey[200],
                           offset: Offset(-10.0,-10.0),
                           blurRadius: 15.0,
                           spreadRadius: 0.1),
                      BoxShadow(
                          color: Colors.white,
                          offset: Offset(20.0,20.0),
                          blurRadius: 15.0,
                          spreadRadius: 0.1),


                    ]





                  ),
                ),
              ),
            )
          ],
      );
  }
}
