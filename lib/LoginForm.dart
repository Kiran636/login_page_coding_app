import 'package:flutter/material.dart';
class LoginForm extends StatefulWidget {
  @override
  _LoginFormState createState() => _LoginFormState();
}

class _LoginFormState extends State<LoginForm> {
  @override
  Widget build(BuildContext context) {
    return Form(
      child:Column(
        children: [
          Text("Login",
            style: TextStyle(color: Color(0xffDF2550),
              fontSize: 20.0,
              fontWeight: FontWeight.bold,
              letterSpacing: 1.5),
              ),
              SizedBox(height:20.0),
              Material(
                    color: Colors.white,
                    elevation: 4.0,
                    child: TextField(
                      decoration: InputDecoration(
                        border: InputBorder.none,
                        hintText: "User Name",
                        hintStyle: TextStyle(color: Colors.grey[500],letterSpacing: 1.5),
                        contentPadding: EdgeInsets.all(15.0)
                      ),
                    ),
                  ),
                  SizedBox(height:30.0),
                  Material(
                    color: Colors.white,
                    elevation: 4.0,
                    child: TextField(
                      decoration: InputDecoration(
                        border: InputBorder.none,
                        hintText: "Password",
                        hintStyle: TextStyle(color: Colors.grey[500],letterSpacing: 1.5),
                        contentPadding: EdgeInsets.all(15.0)
                      ),
                      obscureText: true,
                    ),
                  ),
                  SizedBox(height: 20.0),
                  Align(
                    alignment: Alignment.topLeft,
                    child: Text("Forget Password ?",
                    style: TextStyle(
                      color: Color(0xFFEB7791),
                      fontSize: 12.0,
                      letterSpacing: 1.5),
                    ),
                  ),
                  SizedBox(height:15.0),

                GestureDetector(
                child: Container(
                  height:50.0,
                  decoration: BoxDecoration(
                    color: Color(0xffdf2550),
                    borderRadius: BorderRadius.all(Radius.circular(5.0))
                      ),
                  child: Center(
                    child: Text(
                      "Login",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 14.0,
                        fontWeight: FontWeight.bold,
                        letterSpacing: 1.5
                      ),)
                    ),
                ),
                ),
                SizedBox(height:30.0),
                Text("Don't have an account?",
                style: TextStyle(
                  color: Colors.grey[700],
                  fontSize: 12,
                  letterSpacing: 1.5
                ),),
                Text("Sign up",
                style: TextStyle(
                  color: Color(0xFFE0355D),
                  fontSize: 12,
                  letterSpacing: 1.5
                ),)    
        ],
      ),      
    );
  }
}