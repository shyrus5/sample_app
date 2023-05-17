import 'package:flutter/material.dart';

import 'first_page.dart';

class HomeScreen extends StatelessWidget {
   HomeScreen({super.key});
   final namecontroller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text("Sample App"),
          backgroundColor: Colors.green,
          centerTitle: true,
        ),
        body: Padding(
          padding: EdgeInsets.all(20.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: <Widget> [
              const SizedBox(height: 20.0,),
              TextField(
                controller:  namecontroller,
                    decoration:  const InputDecoration(
                      hintText: "Enter your name",
                      border: OutlineInputBorder(),
                      prefixIcon: Icon(Icons.edit,
                      color: Colors.red,
                      )
                    ),
                    autofocus: true,
                  ),
                
                  const SizedBox(height: 10.0),
                  ElevatedButton(onPressed: () {
                    String texts= namecontroller.text;
                    Navigator.push(context,
                    MaterialPageRoute(builder: (context) => FirstPage(texts),
                    )
                    );
                  },
                  child: const Text("Submit"))
              ],
       )      
      )    
    );
  }
}