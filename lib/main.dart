
import 'package:flutter/material.dart';

import 'first_page.dart';



void main() {
  runApp( const SampleApp());
}
class SampleApp extends StatefulWidget {
   const SampleApp({super.key});

  @override
  State<SampleApp> createState() => _SampleAppState();
}

class _SampleAppState extends State<SampleApp> {
  var namecontroller = TextEditingController();
  var agecontroller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Sample App',
      theme: ThemeData(
        primarySwatch: Colors.blue
      ),
      home: Scaffold(
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
                  const SizedBox(height: 30.0),
                 TextField(
                  controller:  namecontroller,
                    decoration: const InputDecoration(
                      hintText: "Enter your Age",
                      border: OutlineInputBorder(),
                      prefixIcon: Icon(Icons.edit,
                      color: Colors.red,
                      ),
                    ),
                    keyboardType: TextInputType.number,
                  ),
                 const SizedBox(height: 30.0),
                   TextField(
                    controller:  namecontroller,
                    decoration:const InputDecoration(
                      hintText: "Enter your Address",
                      border: OutlineInputBorder(),
                      prefixIcon: Icon(Icons.edit,
                      color: Colors.red,
                      )
                    ),
                  ),
                 const SizedBox(height: 40.0),
                 TextField(
                  controller:  namecontroller,
                    decoration: const InputDecoration(
                      hintText: "Enter your Favorite Game",
                      border: OutlineInputBorder(),
                      prefixIcon: Icon(Icons.edit,
                      color: Colors.red,
                      )
                    ),
                  ),
                  const SizedBox(height: 30.0),
                   TextField(
                    controller:  namecontroller,
                    decoration: const InputDecoration(
                      hintText: "Enter your Date of Birth",
                      border: OutlineInputBorder(),
                      prefixIcon: Icon(Icons.edit,
                      color: Colors.red,
                      ),
                    ),
                    keyboardType: TextInputType.number,
                  ),
                  SizedBox(height: 10.0),
                  ElevatedButton(onPressed: (){
                    Navigator.push(context,
                    MaterialPageRoute(builder: (context) => FirstPage(namecontroller.text.toString(),agecontroller.value.toString()),)
                    );
                  }, 
                  child: const Text("Submit"))
              ],
            )
              
         ),
         
       ),
       
       
    );
  }
}

class _FirstPageState {
}



