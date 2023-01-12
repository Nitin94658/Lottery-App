import 'package:flutter/material.dart';
import 'dart:math';

void main() {
  runApp( MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {

  Random random= Random();
  int x=0;
  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title:const Center(
              child: Text('Lottery App')
          ),
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Center(
                child: Text('Your Lottery number is 4')
            ),
            Container(
              height: 250,
              width: 300,
              decoration: BoxDecoration(
                  color: Colors.grey.withOpacity(0.1),
                  borderRadius: BorderRadius.circular(10)
              ),

              child:
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: x==5 ?
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Icon(Icons.done, color: Colors.green, size: 35),
                    SizedBox(height: 15),
                    Text('Congratulations You have won the lottery, your number is $x\n', textAlign: TextAlign.center,),
                  ],
                ):
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Icon(Icons.error, color: Colors.red, size: 35),
                    SizedBox(height: 15),
                    Text('Better luck next time. Your number is $x\nTry Again', textAlign: TextAlign.center,),
                  ],
                ),
              ),
            )
          ],
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: (){
            x= random.nextInt(6);
            print(x);
            setState(() {

            });
          },

          child: Icon(Icons.refresh),
        ),
      ),
    );
  }
}

