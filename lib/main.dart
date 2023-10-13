import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:guessing_game/gamepage.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomePage(),
    );
  }
}

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  var page = 0;
  var pages = [ Home(), Play(),  Contact()];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
     body: pages[page],
      bottomNavigationBar: CurvedNavigationBar(
          backgroundColor: Colors.white,
          color: Colors.blue,
          buttonBackgroundColor: Colors.grey.shade300,
          animationCurve: Curves.easeIn,
          animationDuration: const Duration(milliseconds: 500),
          index: 0,
          onTap: (value) {
            setState(() {
               page = value;
            });
          },
          items: const [
            Icon( Icons.home,size: 32, ),
            Icon(Icons.not_started, size: 32,),
            //Icon(Icons.info, size: 32),
            Icon(Icons.person_4_rounded, size: 32),
          ]),
    );
  }
}
