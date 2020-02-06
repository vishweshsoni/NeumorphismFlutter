import 'package:flutter/material.dart';
import 'package:neumorphic_remote_controller/screens/heart.dart';
import 'package:neumorphic_remote_controller/screens/remote_screen.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
 
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'RemoteController',
      theme: ThemeData(

        primarySwatch: Colors.blue,
      ),
      home:HeartScreen(),
    );
  }
}
