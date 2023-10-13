import 'dart:math';

import 'package:flutter/material.dart';

class Play extends StatefulWidget {
  Play({super.key});
  @override
  State<Play> createState() => _PlayState();
}

class _PlayState extends State<Play> {
  var inputControl = TextEditingController();
  var text = '';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text("PlayGame"),
          centerTitle: true,
        ),
        body: Column(
          children: [
            SizedBox(
              height: 40,
            ),
            Container(
              width: 320,
              height: 120,
              padding: EdgeInsets.all(15),
              decoration: BoxDecoration(
                color: Colors.blue,
                borderRadius: BorderRadius.circular(20.0),
                boxShadow: [
                  BoxShadow(
                    color: Colors.blue.withOpacity(0.5),
                    spreadRadius: 2,
                    blurRadius: 4,
                    offset: Offset(0, 3),
                  ),
                ],
                gradient: LinearGradient(
                  begin: Alignment.topLeft,
                  end: Alignment.bottomRight,
                  colors: [Colors.blue, Colors.teal],
                ),
              ),
              child: Center(
                child: Text(
                  text,
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 40,
            ),
            Container(
              margin: EdgeInsets.all(8),
              child: TextFormField(
                controller: inputControl,
                textAlign: TextAlign.center,
                keyboardType: TextInputType.number,
                decoration: const InputDecoration(
                    label: Text("Enter A Number"),
                    hintText: 'Enter A Number to Play',
                    prefixIcon: Icon(Icons.numbers),
                    contentPadding:
                        EdgeInsets.symmetric(vertical: 10.0, horizontal: 20.0),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(20.0)),
                    )),
              ),
            ),
            ElevatedButton(
                onPressed: () {
                  setState(() {
                    var num = int.parse(inputControl.text);
                    var ran = Random().nextInt(10);
                    if (num > 10 || num < 0) {
                      text = "Please enter a number between 0 to 10";
                    } else if (num == ran) {
                      text = "Congratulations! You win the game";
                    } else if (num != ran) {
                      text =
                          "Sorry! You lose the game. The original number was ${ran} ";
                    }
                    inputControl.clear();
                  });
                },
                child: Text("    Tap    "))
          ],
        ));
  }
}


class Home extends StatelessWidget {
  const Home({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Homepage"),
      centerTitle: true,),
      body: Column(
        children: [
          SizedBox(height: 50,),
          Container(
            color: Colors.orangeAccent.shade100,
            padding: EdgeInsets.symmetric(vertical: 5,horizontal: 20),
            child: Text("Instruction",style: TextStyle(fontSize: 32,
                 fontWeight: FontWeight.bold),)),
          SizedBox(height: 20,),
          Container(
            padding: EdgeInsets.all(14),
            alignment: Alignment.center,
            color: Colors.amber.shade50,
            child:
            Text("Please enter a number between 0 to 10. If you enter correct number then you will win. But you enter incorrect number then you will lose. Play the game through the tap the play button beside the home buttton in navigation bar",
            style: TextStyle(fontSize: 22,),textAlign: TextAlign.justify,)),
        ],
      ),
    );
  }
}




/*class info extends StatelessWidget {
  info({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("info page"),
      ),
      body: const Text('this is a info page'),
    );
  }
}
*/






class Contact extends StatelessWidget {
  const Contact({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Developer Information"),
      centerTitle: true,),
      body:Container(
        child: Center(
          child: Container(
            height: 250,
            color: Colors.blue[50],
            padding: EdgeInsets.all(17),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
               Text('© Tech Group.\nAll Rights Reserved.',
                  style: TextStyle(
                      fontSize: 25,
                      fontWeight: FontWeight.bold,
                      color: Colors.black)),
                      SizedBox(height: 20,),
               Text('Developed By: Tech Titans',
                  style: TextStyle(
                      fontSize: 22,
                      fontWeight: FontWeight.bold,
                      color: Colors.deepPurple)),
                      SizedBox( height: 15, ),
                       Text('Founder: Ashik Ahmed Sajib',
                  style: TextStyle(
                      fontSize: 22,
                      fontWeight: FontWeight.bold,
                      color: Colors.purple)),

            ]),
          ),
        ),
      ),
    );
  }
}
