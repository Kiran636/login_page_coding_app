import 'package:dummyApp/LoginForm.dart';
import 'package:flutter/material.dart';

class SecondPage extends StatefulWidget {
  @override
  _SecondPageState createState() => _SecondPageState();
}

class _SecondPageState extends State<SecondPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
          child: SafeArea(
          child: Container(
            color: Colors.white,
            child: Padding(
              padding: const EdgeInsets.fromLTRB(30.0, 0.0, 30.0, 30.0),
              child: Column(
                children: [
                  Container(
                    width: 120.0,
                    height: 120.0,
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage('assets/app_logo.png'))
                    ),
                  ),
                  SizedBox(height:30.0),
                  LoginForm()
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}