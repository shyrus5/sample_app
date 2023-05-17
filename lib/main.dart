
import 'package:flutter/material.dart';
import 'package:sample_app/home_screen.dart';

import 'first_page.dart';



void main() {
  runApp( const  SampleApp());
}
class SampleApp extends StatelessWidget {
  const SampleApp({super.key});


  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Sample App',
      theme: ThemeData(
        primarySwatch: Colors.blue
      ),
    home: HomeScreen(),
    debugShowCheckedModeBanner: false,
       
    );
  }
}



