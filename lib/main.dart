import 'package:flutter/material.dart';
import 'package:flutters/Login.dart';
import 'package:flutters/home_screen.dart';
import 'package:flutters/messanger.dart';
import 'package:flutters/user_screen.dart';
import 'counter_screen.dart';

void main() {
  runApp(omar());
}
class omar extends StatelessWidget
{
  // constractor
  // build
  @override
  Widget build(BuildContext context) {
      return MaterialApp(
        debugShowCheckedModeBanner: false,
        home : statefull1(),
      );
  }
  
}