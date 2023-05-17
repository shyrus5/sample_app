

import 'package:flutter/material.dart';




class FirstPage extends StatelessWidget {
  
    FirstPage(this.text, {super.key}) ;
   String text;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("First Page"),    
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Text('Entered Text :$text')
        ],

      )
      );
  }
}