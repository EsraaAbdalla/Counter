// ignore_for_file: avoid_print

import 'package:flutter/material.dart';

class CounterScreen extends StatefulWidget {
   CounterScreen({Key? key}) : super(key: key);

  @override
  State<CounterScreen> createState() => _CounterScreenState();
}

class _CounterScreenState extends State<CounterScreen> {
   int counter = 1;


   @override
  void initState()
   {
    super.initState();
   }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Counter',
        ),
      ),
      body: Center(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TextButton(
                onPressed: (){
                  setState(() {
                    counter--;
                    print(counter);
                  });
                },
                child: Text(
                  'MINUS',
                  style: TextStyle(
                    fontWeight:FontWeight.w800,
                  ),
                ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(
                horizontal: 20.0,

              ),
              child: Text(
              '$counter',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 40.0,
                ),
              ),
            ),
            TextButton(
              onPressed: (){
               setState(() {
                 counter++;
                 print(counter);
               });
              },
              child: Text(
                'PLUS',
                style: TextStyle(
                  fontWeight:FontWeight.w800,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
