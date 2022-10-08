import 'package:flutter/material.dart';
import 'messenger.dart';

void main(){
  runApp( MyApp() );
}

class MyApp extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: messenger(),
    );
  }

}