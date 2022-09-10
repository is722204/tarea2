import 'package:flutter/material.dart';
import 'package:my_app/home_page.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(primarySwatch: Colors.green),
      title: 'Material App',
      home: Scaffold(
        
        appBar: AppBar(
          title: const Text('Mc Flutter'),
          // backgroundColor: Color.fromARGB(255, 15, 161, 2),
        ),
        body: HomePage()
        )
    );
  }
}