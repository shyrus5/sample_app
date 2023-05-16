import 'package:flutter/material.dart';

class FirstPage extends StatefulWidget {
  const FirstPage(String string, number, {super.key});

  @override
  State<FirstPage> createState() => _FirstPageState();
}

class _FirstPageState extends State<FirstPage> {
  var nameFromHome;

  @override
  Widget build(BuildContext context) {   
    return Scaffold(
      appBar: AppBar(
        title: Text("First Page"),
      ),
      body: Column(
        children:<Widget> [
          SizedBox(height: 30.0,
          child: Text("$nameFromHome")
          ),
          

        ],
      ),

    );
  }
}
