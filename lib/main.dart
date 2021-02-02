import 'package:dummyApp/Background.dart';
import 'package:dummyApp/secondPage.dart';
import 'package:flutter/material.dart';

void main() => runApp(MaterialApp(
      title: "Dummy App",
      theme: ThemeData(
        fontFamily: 'Poppins',
      ),
      debugShowCheckedModeBanner: false,
      home: MyScreen(),
      routes: {
        '/secondPage': (context)=> SecondPage(),
      },
    ));

class MyScreen extends StatefulWidget {
  @override
  _MyScreenState createState() => _MyScreenState();
}

class _MyScreenState extends State<MyScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:
      Stack(
        children: [
          Background(),
          Positioned(
            top: MediaQuery.of(context).size.height*0.30,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                      width: MediaQuery.of(context).size.width*0.75,
                      child :Padding(
                        padding: const EdgeInsets.only(left:20.0),
                        child: Text(
                          "Learn Coding.",
                          style: TextStyle(
                            fontSize: 50.0,
                            fontWeight: FontWeight.bold,
                            color: Colors.white,
                            letterSpacing: 1.5
                          ),
                        ),
                      )
                    ),
                SizedBox(height:30.0),
                GestureDetector(
                child: Container(
                  height: 70.0,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(
                      topRight :Radius.circular(50.0),
                      bottomRight:Radius.circular(50.0) )
                      ),
                  child: Padding(
                    padding: const EdgeInsets.all(20.0),
                    child: Center(
                      child: Text(
                        "Continue                  >",
                        style: TextStyle(
                          color: Color(0xffdf2550),
                          fontSize: 22.0,
                          fontWeight: FontWeight.w300,
                          letterSpacing: 1.5,
                        ),)
                      ),
                  ),
                ),
                onTap: (){
                  Navigator.pushNamed(context, '/secondPage');
                } ,
                ),
              ],
            ),
          ),
      ],)
      );
  }
}