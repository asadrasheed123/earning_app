import 'package:flutter/material.dart';

class LoadingScreen extends StatefulWidget {
  @override
  _LoadingScreenState createState() => _LoadingScreenState();
}

class _LoadingScreenState extends State<LoadingScreen> {


  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          color: Color(0xFF232426),
        ),
        Center(
          child: SizedBox(
            width: 70,
            height: 70,
            child: CircularProgressIndicator(color: Colors.green,strokeWidth: 6,

            ),
          ),
        ),
      ],
    );
  }
}
