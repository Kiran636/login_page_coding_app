import 'package:flutter/material.dart';
class Background extends StatefulWidget {
  @override
  _BackgroundState createState() => _BackgroundState();
}

class _BackgroundState extends State<Background> {
  @override
  Widget build(BuildContext context) {
    return Stack(
        children: [
          Container(
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height,
            decoration: BoxDecoration( 
              image: DecorationImage(
                image: AssetImage('assets/background_image.jpg'),
                fit: BoxFit.cover,
               )
            ),
            ),
            Opacity(
              child: Container(
                color: Color(0xffdf2550),
              ),
              opacity: 0.9,
            ),
      ],
      );
  }
}